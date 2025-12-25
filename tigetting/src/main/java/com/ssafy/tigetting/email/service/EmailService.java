package com.ssafy.tigetting.email.service;

import com.ssafy.tigetting.email.entity.EmailVerification;
import com.ssafy.tigetting.email.mapper.EmailVerificationMapper;
import com.ssafy.tigetting.global.exception.AuthException;
import com.ssafy.tigetting.global.exception.ErrorCode;
import com.ssafy.tigetting.mapper.UserMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.Optional;
import java.util.Random;

@Slf4j
@Service
@RequiredArgsConstructor
public class EmailService {

    private final JavaMailSender mailSender;
    private final EmailVerificationMapper emailVerificationMapper;
    private final UserMapper userMapper;

    private static final int CODE_LENGTH = 6;
    private static final int EXPIRY_MINUTES = 5;

    /**
     * 인증 코드 생성
     */
    public String generateVerificationCode() {
        Random random = new Random();
        int code = random.nextInt((int) Math.pow(10, CODE_LENGTH));
        return String.format("%0" + CODE_LENGTH + "d", code);
    }

    /**
     * 이메일 인증 코드 발송
     */
    @Transactional
    public void sendVerificationEmail(String email) {
        // 0. 이미 가입된 이메일인지 확인
        if (userMapper.findByEmail(email).isPresent()) {
            log.warn("⚠️ 이미 가입된 이메일 - {}", email);
            throw new AuthException(ErrorCode.EMAIL_DUPLICATED);
        }

        // 1. 인증 코드 생성
        String code = generateVerificationCode();

        // 2. DB에 저장 (5분 유효)
        EmailVerification verification = EmailVerification.builder()
                .email(email)
                .verificationCode(code)
                .expiryTime(LocalDateTime.now().plusMinutes(EXPIRY_MINUTES))
                .verified(false)
                .build();
        
        emailVerificationMapper.save(verification);

        // 3. 이메일 발송
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(email);
            message.setSubject("[Tigetting] 이메일 인증 코드");
            message.setText(
                "안녕하세요, Tigetting입니다.\n\n" +
                "이메일 인증 코드: " + code + "\n\n" +
                "위 인증 코드를 입력하여 회원가입을 완료해주세요.\n" +
                "인증 코드는 " + EXPIRY_MINUTES + "분 동안 유효합니다."
            );
            
            mailSender.send(message);
            log.info("✉️ 인증 이메일 발송 성공 - {}", email);
        } catch (Exception e) {
            log.error("❌ 인증 이메일 발송 실패 - {}", email, e);
            throw new RuntimeException("이메일 발송에 실패했습니다.");
        }
    }

    /**
     * 인증 코드 검증
     */
    @Transactional
    public boolean verifyCode(String email, String code) {
        Optional<EmailVerification> verification = emailVerificationMapper.findByEmail(email);

        if (verification.isEmpty()) {
            log.warn("⚠️ 인증 정보 존재하지 않음 - {}", email);
            return false;
        }

        EmailVerification emailVerification = verification.get();

        // 만료 시간 체크
        if (LocalDateTime.now().isAfter(emailVerification.getExpiryTime())) {
            log.warn("⚠️ 인증 코드 만료 - {}", email);
            emailVerificationMapper.deleteByEmail(email);
            return false;
        }

        // 코드 일치 여부 확인
        boolean isValid = emailVerification.getVerificationCode().equals(code);
        
        if (isValid) {
            // 인증 성공 시 verified = true 업데이트
            emailVerificationMapper.updateVerified(email);
            log.info("✅ 이메일 인증 성공 - {}", email);
        } else {
            log.warn("❌ 인증 코드 불일치 - {}", email);
        }

        return isValid;
    }

    /**
     * 인증 완료 여부 확인 (회원가입 시 사용)
     */
    public boolean isEmailVerified(String email) {
        Optional<EmailVerification> verification = emailVerificationMapper.findByEmail(email);
        return verification.isPresent() && verification.get().getVerified();
    }

    /**
     * 인증 코드 재발송
     */
    @Transactional
    public void resendVerificationEmail(String email) {
        // 기존 인증 정보 삭제
        emailVerificationMapper.deleteByEmail(email);
        
        // 새 코드 발송
        sendVerificationEmail(email);
        log.info("🔄 인증 코드 재발송 - {}", email);
    }

    /**
     * 만료된 인증 정보 정리 (매일 자정 실행)
     */
    @Scheduled(cron = "0 0 0 * * *")
    @Transactional
    public void cleanupExpiredVerifications() {
        emailVerificationMapper.deleteExpired(LocalDateTime.now());
        log.info("🧹 만료된 이메일 인증 정보 정리 완료");
    }
}
