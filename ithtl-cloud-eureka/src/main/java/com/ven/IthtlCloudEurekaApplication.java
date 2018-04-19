package com.ven;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class IthtlCloudEurekaApplication {

	public static void main(String[] args) {
		SpringApplication.run(IthtlCloudEurekaApplication.class, args);
	}
}
