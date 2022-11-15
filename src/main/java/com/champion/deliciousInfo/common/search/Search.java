package com.champion.deliciousInfo.common.search;

import com.champion.deliciousInfo.common.paging.Page;
import lombok.*;

@Setter @Getter @ToString
@NoArgsConstructor
@AllArgsConstructor
public class Search extends Page {
    private String type; // 검색 조건
    private String keyword; // 검색 키워드
}
