package com.ssafy.tigetting.global.security;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.security.Key;
import java.util.Date;

/*
 * JWT 토큰 생성, 파싱, 검증을 담당하는 유틸 클래스
 * Access Token 발급 및 유효성 검증 용도
 * 서버에 인증 상태를 저장하지 않는 무상태(stateless) 인증 구조에 사용
 */
@Component
public class JwtUtil {

    /*
     * 1. JWT 서명에 사용하는 Secret Key
     * 2. application.yaml에서 주입
     * 3. HS256 알고리즘 사용 시 충분히 긴 길이 권장
     */
    @Value("${jwt.secret}")
    private String secret;

    /*
     * 1. Access Token 유효 시간 (밀리초 단위)
     * 2. 60분 = 3600000
     */
    @Value("${jwt.access-token-validity-ms}")
    private long accessTokenValidityMs;

    /*
     * 1. Secret 문자열을 JWT 서명 및 검증에 사용되는 Key 객체로 변환
     * 2. 토큰 생성과 검증 시 동일한 키 사용
     */
    private Key getSigningKey() {
        return Keys.hmacShaKeyFor(secret.getBytes());
    }

    /*
     * 1. Access Token을 생성한다
     * 2. 토큰에는 사용자 식별자(subject), 발급 시간, 만료 시간을 포함
     * 3. 서명 알고리즘은 HS256 사용
     */
    public String generate(String username) {
        Date now = new Date();
        Date expiryDate = new Date(now.getTime() + accessTokenValidityMs);

        return Jwts.builder()
                .setSubject(username)
                .setIssuedAt(now)
                .setExpiration(expiryDate)
                .signWith(getSigningKey(), SignatureAlgorithm.HS256)
                .compact();
    }

    /*
     * 1. JWT 문자열을 파싱하여 Claims(페이로드)를 반환
     * 2. 서명 검증 및 만료 검사를 수행
     * 3. 토큰이 유효하지 않으면 예외 발생
     */
    public Claims extractClaims(String token) {
        return Jwts.parserBuilder()
                .setSigningKey(getSigningKey())
                .build()
                .parseClaimsJws(token)
                .getBody();
    }

    /*
     * 1. 토큰에 저장된 사용자 식별자(subject)를 추출
     */
    public String extractUsername(String token) {
        return extractClaims(token).getSubject();
    }

    /*
     * 1. 토큰의 만료 여부를 확인
     * 2. 현재 시간이 만료 시간 이후면 true 반환
     */
    public boolean isTokenExpired(String token) {
        return extractClaims(token)
                .getExpiration()
                .before(new Date());
    }

    /*
     * 1. 토큰의 유효성을 검사
     * 2. 토큰에 포함된 사용자 정보가 요청 사용자와 일치하는지 확인
     * 3. 토큰이 만료되지 않았는지 확인
     */
    public boolean validateToken(String token, String username) {
        return username.equals(extractUsername(token))
                && !isTokenExpired(token);
    }
}
