package com.ven.system;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableEurekaClient
@SpringBootApplication
@MapperScan(basePackages = "com.ven.system.mapper")
public class IthtlSystemApplication{

	public static void main(String[] args) {
		SpringApplication.run(IthtlSystemApplication.class, args);
	}

}
