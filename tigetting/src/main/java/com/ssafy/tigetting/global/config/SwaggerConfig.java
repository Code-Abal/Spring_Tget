package com.ssafy.tigetting.global.config;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.servers.Server;
import org.springframework.context.annotation.Configuration;

@Configuration
@OpenAPIDefinition(
        info = @Info(
                title = "Tigetting API Docs",
                version = "v1",
                description = "티게팅 프로젝트 API 명세서"
        ),
        servers = {
                @Server(url = "http://localhost:8081", description = "Local Server")
        }
)
public class SwaggerConfig {
}
