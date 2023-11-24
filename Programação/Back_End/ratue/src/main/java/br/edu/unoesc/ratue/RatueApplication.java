package br.edu.unoesc.ratue;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@EntityScan(basePackages = "br.edu.unoesc.ratue.entidades")
@SpringBootApplication
public class RatueApplication {

	public static void main(String[] args) {
		SpringApplication.run(RatueApplication.class, args);
	}

}
