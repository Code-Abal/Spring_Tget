package com.ssafy.tigetting.mapper;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ssafy.tigetting.dto.tget.PerformanceDto;

@Mapper
public interface PerformanceManagementMapper {
    
    /**
     * 기업회원이 등록한 공연 목록 조회
     * @param userId 사용자 ID
     * @return 공연 목록
     */
    List<PerformanceDto> findByUserId(Integer userId);

    /**
     * 공연 등록
     */
    void insertPerformance(
        @Param("mt20id") String mt20id,
        @Param("prfnm") String prfnm,
        @Param("prfpdfrom") LocalDate prfpdfrom,
        @Param("prfpdto") LocalDate prfpdto,
        @Param("fcltynm") String fcltynm,
        @Param("area") String area,
        @Param("genreName") String genreName,
        @Param("prfstate") String prfstate,
        @Param("mt10id") String mt10id,
        @Param("userId") Integer userId,
        @Param("posterImage") byte[] posterImage,
        @Param("posterType") String posterType
    );

    /**
     * 공연 수정
     */
    void updatePerformance(
        @Param("mt20id") String mt20id,
        @Param("prfnm") String prfnm,
        @Param("prfpdfrom") LocalDate prfpdfrom,
        @Param("prfpdto") LocalDate prfpdto,
        @Param("fcltynm") String fcltynm,
        @Param("area") String area,
        @Param("genreName") String genreName,
        @Param("prfstate") String prfstate,
        @Param("mt10id") String mt10id,
        @Param("userId") Integer userId,
        @Param("posterImage") byte[] posterImage,
        @Param("posterType") String posterType
    );

    /**
     * 공연 삭제 (본인 것만)
     */
    void deletePerformance(@Param("mt20id") String mt20id, @Param("userId") Integer userId);

    /**
     * 포스터 정보 조회
     */
    Optional<PerformanceDto> findPosterById(String mt20id);

    /**
     * 포스터 이미지 바이너리 조회 (HEX 인코딩)
     */
    String findPosterImageById(String mt20id);

    /**
     * 포스터 타입 조회
     */
    String findPosterTypeById(String mt20id);

    /**
     * ID 존재 여부 확인
     */
    boolean existsById(String mt20id);
}
