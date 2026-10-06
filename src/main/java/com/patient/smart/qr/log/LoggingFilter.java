package com.patient.smart.qr.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class LoggingFilter implements CommandLineRunner {
    private static final Logger logger = LoggerFactory.getLogger(LoggingFilter.class);
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Value("${spring.profiles.active:default}")
    private String activeProfile;
    @Override
    public void run(String... args) throws Exception {
        try {
            jdbcTemplate.execute("SELECT 1");
            logger.info("Active Profile " + activeProfile);
            logger.info("Database connected successfully.");
        } catch (Exception e) {
            logger.error(" Database connection failed: {}", e.getMessage());
        }
    }

}
