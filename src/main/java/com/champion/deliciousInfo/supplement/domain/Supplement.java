package com.champion.deliciousInfo.supplement.domain;

import lombok.*;
import org.springframework.stereotype.Service;

@Getter @Service @ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Supplement {
    private Long supplementNo;
    private String name;
    private String category;
    private float quantity;
}
