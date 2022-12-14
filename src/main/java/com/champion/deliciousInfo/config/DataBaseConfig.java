package com.champion.deliciousInfo.config;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

import javax.sql.DataSource;

@Configuration
@PropertySource("classpath:aws_info_goill1524.properties")
//@PropertySource("classpath:data_info.properties")
public class DataBaseConfig {
    @Value("${aws.rds_user_name}")
    private String userName;
    @Value("${aws.rds_password}")
    private String password;

    @Value("${aws.rds_url}")
    private String url;

    @Bean
    public DataSource dataSource(){
        HikariConfig config = new HikariConfig();
        config.setUsername(userName);
        config.setPassword(password);
        config.setJdbcUrl(url);
        config.setDriverClassName("org.mariadb.jdbc.Driver");
        return new HikariDataSource(config);
    }
}