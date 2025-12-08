package com.ssafy.tigetting.entity.tget;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class VenueEntity {

    private String mt10id; // 공연장 ID (PK)

    private String fcltynm; // 공연장명

    @Builder.Default
    private Integer mt13cnt = 0;

    private String fcltychartr;
    private String sidonm;
    private String gugunnm;
}
