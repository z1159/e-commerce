package com.mr;

import com.spring4all.swagger.EnableSwagger2Doc;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableSwagger2Doc
@SpringBootApplication
@EnableEurekaClient
public class ShopClientApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShopClientApplication.class, args);
	}

}
