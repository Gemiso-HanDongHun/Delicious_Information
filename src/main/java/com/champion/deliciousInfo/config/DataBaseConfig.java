package com.champion.deliciousInfo.config;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

import javax.sql.DataSource;

@Configuration
@PropertySource("classpath:aws_rds_info.properties")
public class DataBaseConfig {
    @Value("${aws.rds.db.userName}")
    private String userName;
    @Value("${aws.rds.db.password}")
    private String password;
    @Value("${aws.rds.db.url}")
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