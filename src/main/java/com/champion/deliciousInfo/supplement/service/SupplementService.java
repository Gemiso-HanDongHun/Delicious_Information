package com.champion.deliciousInfo.supplement.service;

import com.champion.deliciousInfo.supplement.domain.Supplement;
import com.champion.deliciousInfo.supplement.repository.SupplementMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SupplementService {

    private final SupplementMapper supplementMapper;

    public List<Supplement> findAll(){
        List<Supplement> list = supplementMapper.findAll();

        return list;
    }

}
