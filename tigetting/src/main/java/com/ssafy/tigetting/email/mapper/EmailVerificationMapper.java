package com.ssafy.tigetting.email.mapper;

import com.ssafy.tigetting.email.entity.EmailVerification;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.time.LocalDateTime;
import java.util.Optional;

@Mapper
public interface EmailVerificationMapper {
    
    /**
     * 인증 정보 저장
     */
    void save(EmailVerification emailVerification);
    
    /**
     * 이메일로 인증 정보 조회
     */
    Optional<EmailVerification> findByEmail(@Param("email") String email);
    
    /**
     * 인증 완료 처리
     */
    void updateVerified(@Param("email") String email);
    
    /**
     * 이메일로 인증 정보 삭제
     */
    void deleteByEmail(@Param("email") String email);
    
    /**
     * 만료된 인증 정보 삭제
     */
    void deleteExpired(@Param("now") LocalDateTime now);
}
