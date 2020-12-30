package br.com.age2deapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class AgeOfEmpiresIiDefiniteEditionApplication {

	public static void main(String[] args) {
		SpringApplication.run(AgeOfEmpiresIiDefiniteEditionApplication.class, args);
	}

}
