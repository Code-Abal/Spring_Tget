package com.ssafy.tigetting.entity.tget;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class GenreEntity {

    private Integer genreId; // 장르 id(PK)

    private String genreNm; // 장르명
}
