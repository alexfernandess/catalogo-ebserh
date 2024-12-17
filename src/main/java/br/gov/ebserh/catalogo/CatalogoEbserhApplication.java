package br.gov.ebserh.catalogo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class CatalogoEbserhApplication {

	@RequestMapping ("/")
	String home() {
		return "Hello Spring World!";
	}

	public static void main(String[] args) {
		SpringApplication.run(CatalogoEbserhApplication.class, args);
	}

}
