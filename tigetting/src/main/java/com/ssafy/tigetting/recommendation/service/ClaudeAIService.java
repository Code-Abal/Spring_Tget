package com.ssafy.tigetting.recommendation.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ssafy.tigetting.recommendation.dto.AIRecommendationRequest;
import com.ssafy.tigetting.recommendation.dto.AIRecommendationResponse;
import com.ssafy.tigetting.recommendation.dto.PerformanceForAI;
import com.ssafy.tigetting.recommendation.dto.UserBookingHistory;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.time.LocalDate;
import java.util.*;

/**
 * Claude AI API 호출 서비스
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class ClaudeAIService {

    private final RestTemplate restTemplate = new RestTemplate();
    private final ObjectMapper objectMapper = new ObjectMapper();

    @Value("${claude.api.url}")
    private String apiUrl;

    @Value("${claude.api.key}")
    private String apiKey;

    @Value("${claude.api.model}")
    private String model;

    @Value("${claude.api.max-tokens}")
    private int maxTokens;

    /**
     * 배치용 기본 추천 생성
     */
    public List<String> generateBaseRecommendations(
            List<PerformanceForAI> performances,
            Integer genreId,
            int count) {

        log.info("🤖 AI 기본 추천 생성 시작 - genreId: {}, count: {}, 공연 수: {}",
                genreId, count, performances.size());

        try {
            String prompt = buildBatchPrompt(performances, genreId, count);
            String response = callClaudeAPI(prompt);
            List<String> recommendations = parseRecommendations(response);

            log.info("✅ AI 기본 추천 생성 완료 - {} 개 추천", recommendations.size());
            return recommendations.subList(0, Math.min(count, recommendations.size()));

        } catch (Exception e) {
            log.error("❌ AI 기본 추천 생성 실패", e);
            // 폴백: 최신순으로 반환
            return performances.stream()
                    .limit(count)
                    .map(PerformanceForAI::getMt20id)
                    .toList();
        }
    }

    /**
     * 개인화 추천 생성
     */
    public List<String> personalizeRecommendations(
            List<String> baseRecommendationIds,
            List<UserBookingHistory> userHistory,
            int count) {

        log.info("🎯 AI 개인화 추천 시작 - 기본 추천: {}, 사용자 이력: {}, 목표: {}",
                baseRecommendationIds.size(), userHistory.size(), count);

        try {
            String prompt = buildPersonalizationPrompt(baseRecommendationIds, userHistory, count);
            String response = callClaudeAPI(prompt);
            List<String> recommendations = parseRecommendations(response);

            log.info("✅ AI 개인화 추천 완료 - {} 개 추천", recommendations.size());
            return recommendations.subList(0, Math.min(count, recommendations.size()));

        } catch (Exception e) {
            log.error("❌ AI 개인화 추천 실패", e);
            // 폴백: 기본 추천에서 상위 N개 반환
            return baseRecommendationIds.subList(0, Math.min(count, baseRecommendationIds.size()));
        }
    }

    /**
     * 배치용 프롬프트 생성
     */
    private String buildBatchPrompt(List<PerformanceForAI> performances, Integer genreId, int count) {
        String genreDescription = getGenreDescription(genreId);
        String criteria = getRecommendationCriteria(genreId);

        // 요청 크기 제한: 홈페이지(전체)는 200개, 장르별은 50개
        int maxPerformances = (genreId == null || genreId == 0) ? 200 : 50;
        List<PerformanceForAI> limitedPerformances = performances.size() > maxPerformances
                ? performances.subList(0, maxPerformances)
                : performances;

        log.info("📊 AI 요청에 포함할 공연 수: {} / {} (최대: {})",
            limitedPerformances.size(), performances.size(), maxPerformances);

        // 더 간결한 포맷으로 변경: [ID, 제목축약, 장르ID, 상태]
        StringBuilder performancesList = new StringBuilder();
        for (PerformanceForAI perf : limitedPerformances) {
            // 제목만 20자로 축약 (가장 중요한 정보)
            String prfnm = perf.getPrfnm() != null && perf.getPrfnm().length() > 20
                    ? perf.getPrfnm().substring(0, 20)
                    : perf.getPrfnm();

            performancesList.append(String.format(
                    "[\"%s\",\"%s\",%d,\"%s\"],",
                    perf.getMt20id(),
                    prfnm,
                    perf.getGenreid(),
                    perf.getPrfstate()));
        }

        // 마지막 쉼표 제거
        if (performancesList.length() > 0) {
            performancesList.setLength(performancesList.length() - 1);
        }

        return String.format("""
                # 공연 추천 시스템 - 전문가 큐레이션
                
                ## 역할 (Role)
                당신은 대한민국 최고의 공연 예술 큐레이터입니다. 10년 이상의 경험을 바탕으로 관객들에게 최상의 공연 경험을 제공하는 것이 목표입니다.
                
                ## 미션 (Mission)
                **%s**를 방문하는 관객들을 위해 %d개의 엄선된 공연을 추천해주세요.
                
                ## 추천 기준 (Criteria)
                %s
                
                ## 공연 데이터 (Performances)
                형식: [공연ID, 제목, 장르ID, 공연상태]
                - 장르ID: 1=클래식, 2=콘서트, 3=뮤지컬, 4=연극
                - 상태: 공연중(현재 관람 가능), 공연예정(예매 가능)
                
                데이터:
                [%s]
                
                ## 출력 형식 (Output Format)
                반드시 아래 JSON 형식만 출력하세요. 설명이나 부연은 제외합니다.
                ```json
                {
                  "recommendations": ["공연ID1", "공연ID2", "공연ID3", ...]
                }
                ```
                
                ## 중요 지침 (Important Notes)
                1. 정확히 %d개를 선정하세요
                2. 공연ID만 반환하세요 (제목이나 다른 정보 제외)
                3. 추천 순서가 중요합니다 (첫 번째가 가장 강력 추천)
                4. 다양성과 품질의 균형을 유지하세요
                """,
                genreDescription,
                count,
                criteria,
                performancesList,
                count);
    }

    /**
     * 개인화 프롬프트 생성
     */
    private String buildPersonalizationPrompt(
            List<String> baseIds,
            List<UserBookingHistory> userHistory,
            int count) {

        // 사용자 이력이 너무 많으면 최근 20개만 사용
        int maxHistory = 20;
        List<UserBookingHistory> limitedHistory = userHistory.size() > maxHistory
                ? userHistory.subList(0, maxHistory)
                : userHistory;

        StringBuilder historyText = new StringBuilder();
        Map<Integer, Long> genreCount = new HashMap<>();

        for (UserBookingHistory history : limitedHistory) {
            // 공연 이름 길이 제한
            String prfnm = history.getPrfnm() != null && history.getPrfnm().length() > 30
                    ? history.getPrfnm().substring(0, 30)
                    : history.getPrfnm();
            String area = history.getArea() != null && history.getArea().length() > 15
                    ? history.getArea().substring(0, 15)
                    : history.getArea();

            historyText.append(String.format("- %s (%s, G%d)\\n",
                    prfnm,
                    area,
                    history.getGenreid()));
            genreCount.put(history.getGenreid(),
                    genreCount.getOrDefault(history.getGenreid(), 0L) + 1);
        }

        String preferredGenres = genreCount.entrySet().stream()
                .sorted(Map.Entry.<Integer, Long>comparingByValue().reversed())
                .limit(2)
                .map(e -> "G" + e.getKey())
                .reduce((a, b) -> a + ", " + b)
                .orElse("없음");

        return String.format("""
                # 개인화 공연 추천 시스템
                
                ## 역할 (Role)
                당신은 관객의 취향을 정확히 파악하는 AI 공연 추천 전문가입니다.
                사용자의 과거 예매 패턴을 분석하여 최적의 공연을 추천합니다.
                
                ## 미션 (Mission)
                사용자의 예매 이력을 분석하고, 추천 후보 중에서 **%d개**의 맞춤형 공연을 선정하세요.
                
                ## 사용자 프로필 (User Profile)
                ### 최근 예매 이력 (%d건)
                %s
                
                ### 선호 장르 분석
                %s
                
                ## 추천 후보 (Candidates)
                다음 공연 ID 중에서 선택하세요:
                %s
                
                ## 개인화 전략 (Personalization Strategy)
                1. **선호 장르 우선**: 사용자가 자주 예매한 장르 우선 고려
                2. **취향 확장**: 선호 장르 외에도 새로운 경험 1-2개 포함
                3. **지역 선호도**: 자주 방문한 지역의 공연 고려
                4. **품질 보장**: 검증된 작품과 신선한 기획의 균형
                
                ## 출력 형식 (Output Format)
                반드시 아래 JSON 형식만 출력하세요.
                ```json
                {
                  "recommendations": ["공연ID1", "공연ID2", "공연ID3", ...]
                }
                ```
                
                ## 중요 지침 (Important Notes)
                - 정확히 %d개를 선정하세요
                - 사용자 이력과의 연관성이 높은 순서로 정렬하세요
                - 추천 후보 목록에서만 선택하세요
                """,
                count,
                limitedHistory.size(),
                historyText.toString(),
                preferredGenres,
                baseIds,
                count);
    }

    /**
     * Claude API 호출
     */
    private String callClaudeAPI(String prompt) throws JsonProcessingException {
        // 프롬프트 크기 로깅 (디버깅용)
        int promptSize = prompt.getBytes().length;
        log.info("📏 프롬프트 크기: {} bytes (~{} KB)", promptSize, promptSize / 1024);

        if (promptSize > 100000) { // 100KB 이상이면 경고
            log.warn("⚠️ 프롬프트 크기가 큽니다. 413 에러 발생 가능성 있음");
        }

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.set("x-api-key", apiKey);
        headers.set("anthropic-version", "2023-06-01");

        Map<String, Object> requestBody = new HashMap<>();
        requestBody.put("model", model);
        requestBody.put("max_tokens", maxTokens);
        requestBody.put("messages", List.of(
                Map.of("role", "user", "content", prompt)));

        HttpEntity<Map<String, Object>> entity = new HttpEntity<>(requestBody, headers);

        log.debug("📤 Claude API 요청 전송");
        ResponseEntity<String> response = restTemplate.postForEntity(apiUrl, entity, String.class);
        log.debug("📥 Claude API 응답 수신");

        return response.getBody();
    }

    /**
     * AI 응답에서 추천 목록 파싱
     */
    private List<String> parseRecommendations(String responseBody) throws JsonProcessingException {
        JsonNode root = objectMapper.readTree(responseBody);
        JsonNode content = root.path("content").get(0).path("text");
        String text = content.asText();

        // JSON 부분만 추출
        int startIdx = text.indexOf("{");
        int endIdx = text.lastIndexOf("}") + 1;
        String jsonPart = text.substring(startIdx, endIdx);

        JsonNode recommendations = objectMapper.readTree(jsonPart).path("recommendations");
        List<String> result = new ArrayList<>();
        recommendations.forEach(node -> result.add(node.asText()));

        return result;
    }

    /**
     * 장르 설명
     */
    private String getGenreDescription(Integer genreId) {
        if (genreId == null || genreId == 0) {
            return "홈페이지 (전체 장르)";
        }
        return switch (genreId) {
            case 1 -> "클래식 페이지";
            case 2 -> "콘서트 페이지";
            case 3 -> "뮤지컬 페이지";
            case 4 -> "연극 페이지";
            default -> "알 수 없는 장르";
        };
    }

    /**
     * 장르별 추천 기준
     */
    private String getRecommendationCriteria(Integer genreId) {
        if (genreId == null || genreId == 0) {
            return """
                    ### 전체 장르 큐레이션 기준
                    1. **현재 관람 가능**: '공연중' 또는 '공연예정' 상태만 선택
                    2. **장르 다양성**: 4개 장르(클래식, 콘서트, 뮤지컬, 연극)를 균형있게 배분
                    3. **시의성**: 현재 진행 중이거나 곧 시작되는 공연 우선
                    4. **대중성과 예술성**: 흥행작과 예술성 높은 작품의 조화
                    5. **접근성**: 다양한 지역과 가격대 고려
                    
                    **추천 포인트**: 메인 페이지의 첫인상이 중요합니다. 
                    각 장르의 대표작과 화제작을 선별하여 관객의 호기심을 자극하세요.
                    """;
        }
        return switch (genreId) {
            case 1 -> """
                    ### 클래식/오페라 큐레이션 기준
                    1. **장르 필터링**: genreid가 1인 클래식/오페라 공연만 선택
                    2. **연주자/단체 명성**: 세계적 또는 국내 정상급 오케스트라, 솔리스트 우선
                    3. **레퍼토리 중요도**: 
                       - 베토벤, 모차르트, 차이콥스키 등 명곡 프로그램
                       - 특별 기획 콘서트 (협주곡의 밤, 교향곡 시리즈 등)
                    4. **공연장 위상**: 예술의전당, 롯데콘서트홀 등 주요 홀 우선
                    5. **시즌 특성**: 정기연주회, 페스티벌 등 특별 이벤트 고려
                    
                    **추천 포인트**: 클래식 애호가들은 연주자와 곡목을 중시합니다.
                    신뢰할 수 있는 연주와 감동적인 레퍼토리를 선별하세요.
                    """;
            case 2 -> """
                    ### 콘서트 큐레이션 기준
                    1. **장르 필터링**: genreid가 2인 콘서트 공연만 선택
                    2. **아티스트 인기도**: 현재 차트 순위, SNS 화제성, 팬덤 규모
                    3. **콘서트 유형**:
                       - 단독 콘서트 우선 (페스티벌보다)
                       - 투어 공연의 경우 지역 안배
                    4. **시의성**: 
                       - 현재 진행 중이거나 임박한 공연 최우선
                       - 신규 예매 오픈 공연 고려
                    5. **장르 다양성**: K-POP, 인디, 록, 재즈 등 다양한 음악 스타일
                    
                    **추천 포인트**: 콘서트는 타이밍이 생명입니다.
                    지금 가장 핫한 아티스트와 놓치면 안 될 공연을 추천하세요.
                    """;
            case 3 -> """
                    ### 뮤지컬 큐레이션 기준
                    1. **장르 필터링**: genreid가 3인 뮤지컬 공연만 선택
                    2. **작품 검증도**:
                       - 브로드웨이/웨스트엔드 원작 라이선스 작품
                       - 장기 공연 중인 흥행작 (안정성 보장)
                       - 화제의 신작 (신선함 제공)
                    3. **캐스팅 경쟁력**: 
                       - 스타 배우 출연 공연
                       - 뮤지컬 배우 팬덤 고려
                       - 더블/트리플 캐스팅 정보
                    4. **작품 성격**: 
                       - 가족 뮤지컬 vs 성인 관람가
                       - 코믹 vs 감동 vs 액션
                    5. **시즌성**: 연말/방학 시즌 가족 뮤지컬, 평시 성인 뮤지컬
                    
                    **추천 포인트**: 뮤지컬은 출연진이 핵심입니다.
                    검증된 흥행작과 화제의 신작을 균형있게 추천하세요.
                    """;
            case 4 -> """
                    ### 연극 큐레이션 기준
                    1. **장르 필터링**: genreid가 4인 연극 공연만 선택
                    2. **작품성 평가**:
                       - 평론가/관객 호평작
                       - 국내외 수상 경력
                       - SNS/커뮤니티 입소문
                    3. **창작진 역량**:
                       - 유명 연출가의 신작
                       - 실력파 배우진 구성
                       - 극단/제작사 신뢰도
                    4. **장르 다양성**:
                       - 정통 연극 (사실주의, 모더니즘)
                       - 실험극 (아방가르드, 몰입형)
                       - 코미디극 (가족극, 블랙코미디)
                    5. **사회적 반향**: 현 시대 이슈 반영, 화제성 있는 주제
                    
                    **추천 포인트**: 연극 관객은 작품성과 참신함을 중시합니다.
                    평단의 인정과 대중의 공감을 동시에 얻은 작품을 추천하세요.
                    """;
            default -> """
                    ### 기본 추천 기준
                    1. 현재 관람 가능한 공연
                    2. 품질이 검증된 작품
                    3. 다양한 선택지 제공
                    """;
        };
    }
}
