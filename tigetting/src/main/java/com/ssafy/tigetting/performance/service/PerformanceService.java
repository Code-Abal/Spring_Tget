package com.ssafy.tigetting.performance.service;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Random;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.ssafy.tigetting.dto.tget.PerformanceDetailDto;
import com.ssafy.tigetting.dto.tget.PerformanceDto;
import com.ssafy.tigetting.mapper.PerformanceManagementMapper;
import com.ssafy.tigetting.mapper.PerformanceMapper;
import com.ssafy.tigetting.mapper.UserMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PerformanceService {

    private final PerformanceMapper performanceMapper;
    private final PerformanceManagementMapper performanceManagementMapper;
    private final UserMapper userMapper;

    public List<PerformanceDto> getAllPerformances() {
        List<PerformanceDto> performances = performanceMapper.findAll();
        System.out.println("조회된 공연 수: " + performances.size());
        return performances;
    }

    public PerformanceDetailDto getPerformanceDetail(String id) {
        return performanceMapper.findDetailById(id)
            .orElseThrow(() -> new RuntimeException("공연을 찾을 수 없습니다: " + id));
    }

    public List<PerformanceDto> getMyPerformances(String email) {
        Integer userId = userMapper.findByEmail(email)
            .orElseThrow(() -> new RuntimeException("사용자를 찾을 수 없습니다: " + email))
            .getUserId();
        return performanceManagementMapper.findByUserId(userId);
    }

    @Transactional
    public PerformanceDto createPerformance(String email, String prfnm, String genreName, 
            String prfpdfrom, String prfpdto, String fcltynm, String area, 
            String mt10id, String prfstate, MultipartFile poster) {
        try {
            // 사용자 조회
            Integer userId = userMapper.findByEmail(email)
                .orElseThrow(() -> new RuntimeException("사용자를 찾을 수 없습니다: " + email))
                .getUserId();

            // 고유 ID 생성 (PF900000 ~ PF999999)
            String mt20id = generateUniquePerformanceId();

            // 이미지 처리
            byte[] posterImage = poster.getBytes();
            String posterType = poster.getContentType();

            // 날짜 파싱
            LocalDate prfpdFromDate = LocalDate.parse(prfpdfrom);
            LocalDate prfpdToDate = LocalDate.parse(prfpdto);

            // DB 저장
            performanceManagementMapper.insertPerformance(
                mt20id,
                prfnm,
                prfpdFromDate,
                prfpdToDate,
                fcltynm,
                area,
                genreName,
                prfstate,
                mt10id,
                userId,
                posterImage,
                posterType
            );

            // 응답 DTO 생성
            return PerformanceDto.builder()
                .mt20id(mt20id)
                .prfnm(prfnm)
                .prfpdfrom(prfpdFromDate)
                .prfpdto(prfpdToDate)
                .fcltynm(fcltynm)
                .area(area)
                .genreName(genreName)
                .prfstate(prfstate)
                .mt10id(mt10id)
                .build();
        } catch (IOException e) {
            throw new RuntimeException("이미지 처리 중 오류 발생", e);
        }
    }

    @Transactional
    public PerformanceDto updatePerformance(String email, String mt20id, String prfnm, String genreName, 
            String prfpdfrom, String prfpdto, String fcltynm, String area, 
            String mt10id, String prfstate, MultipartFile poster) {
        try {
            // 사용자 조회
            Integer userId = userMapper.findByEmail(email)
                .orElseThrow(() -> new RuntimeException("사용자를 찾을 수 없습니다: " + email))
                .getUserId();

            // 날짜 파싱
            LocalDate prfpdFromDate = LocalDate.parse(prfpdfrom);
            LocalDate prfpdToDate = LocalDate.parse(prfpdto);

            // 이미지 처리 (새 이미지가 있는 경우만)
            byte[] posterImage = null;
            String posterType = null;
            if (poster != null && !poster.isEmpty()) {
                posterImage = poster.getBytes();
                posterType = poster.getContentType();
            }

            // DB 업데이트
            performanceManagementMapper.updatePerformance(
                mt20id,
                prfnm,
                prfpdFromDate,
                prfpdToDate,
                fcltynm,
                area,
                genreName,
                prfstate,
                mt10id,
                userId,
                posterImage,
                posterType
            );

            // 응답 DTO 생성
            return PerformanceDto.builder()
                .mt20id(mt20id)
                .prfnm(prfnm)
                .prfpdfrom(prfpdFromDate)
                .prfpdto(prfpdToDate)
                .fcltynm(fcltynm)
                .area(area)
                .genreName(genreName)
                .prfstate(prfstate)
                .mt10id(mt10id)
                .build();
        } catch (IOException e) {
            throw new RuntimeException("이미지 처리 중 오류 발생", e);
        }
    }

    @Transactional
    public void deletePerformance(String email, String mt20id) {
        Integer userId = userMapper.findByEmail(email)
            .orElseThrow(() -> new RuntimeException("사용자를 찾을 수 없습니다: " + email))
            .getUserId();
        
        performanceManagementMapper.deletePerformance(mt20id, userId);
    }

    public ResponseEntity<byte[]> getPoster(String mt20id) {
        System.out.println("🖼️ 포스터 조회 요청 - ID: " + mt20id);
        
        PerformanceDto performance = performanceManagementMapper.findPosterById(mt20id)
            .orElseThrow(() -> {
                System.out.println("❌ 공연을 찾을 수 없음: " + mt20id);
                return new RuntimeException("공연을 찾을 수 없습니다: " + mt20id);
            });

        //System.out.println("✅ 공연 찾음 - poster 필드: " + performance.getPoster());

        if (performance.getPoster() != null && !performance.getPoster().isEmpty()) {
            // KOPIS 공연 - 외부 URL로 리다이렉트 필요 (프론트에서 처리)
            System.out.println("⚠️ KOPIS 공연 - 외부 URL 사용");
            throw new RuntimeException("External poster URL");
        }

        System.out.println("🔍 poster_image 조회 시도...");
        byte[] posterImage = null;
        try {
            String hexString = performanceManagementMapper.findPosterImageById(mt20id);
            if (hexString != null && !hexString.isEmpty()) {
                // HEX 문자열을 byte[]로 변환
                posterImage = hexStringToByteArray(hexString);
                System.out.println("🖼️ poster_image 크기: " + posterImage.length + " bytes");
            } else {
                System.out.println("⚠️ poster_image가 null 또는 비어있음");
            }
        } catch (Exception e) {
            System.out.println("❌ BLOB 조회 실패: " + e.getClass().getName());
            System.out.println("❌ 에러 메시지: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("포스터 이미지 조회 실패: " + e.getMessage(), e);
        }
        
        if (posterImage == null || posterImage.length == 0) {
            System.out.println("❌ 포스터 이미지가 없거나 비어있음");
            throw new RuntimeException("포스터 이미지가 없습니다: " + mt20id);
        }

        String contentType = performanceManagementMapper.findPosterTypeById(mt20id);
        System.out.println("📄 Content-Type: " + contentType);
        
        MediaType mediaType;
        try {
            mediaType = contentType != null && !contentType.isEmpty() 
                ? MediaType.parseMediaType(contentType) 
                : MediaType.IMAGE_JPEG;
        } catch (Exception e) {
            System.out.println("⚠️ Content-Type 파싱 실패, 기본값 사용: " + e.getMessage());
            mediaType = MediaType.IMAGE_JPEG;
        }

        //System.out.println("✅ 포스터 반환 - MediaType: " + mediaType);
        return ResponseEntity.ok()
            .contentType(mediaType)
            .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=\"poster_" + mt20id + "\"")
            .body(posterImage);
    }

    /**
     * HEX 문자열을 byte 배열로 변환
     */
    private byte[] hexStringToByteArray(String hex) {
        int len = hex.length();
        byte[] data = new byte[len / 2];
        for (int i = 0; i < len; i += 2) {
            data[i / 2] = (byte) ((Character.digit(hex.charAt(i), 16) << 4)
                    + Character.digit(hex.charAt(i + 1), 16));
        }
        return data;
    }

    private String generateUniquePerformanceId() {
        String mt20id;
        do {
            int randomNum = 900000 + new Random().nextInt(100000); // 900000 ~ 999999
            mt20id = "PF" + randomNum;
        } while (performanceManagementMapper.existsById(mt20id));
        return mt20id;
    }
}
