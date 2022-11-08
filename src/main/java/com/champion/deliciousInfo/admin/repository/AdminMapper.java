package com.champion.deliciousInfo.admin.repository;

import com.champion.deliciousInfo.admin.domain.Admin;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminMapper {
    Admin findUser(Admin admin);
    boolean regist(Admin admin);
}
