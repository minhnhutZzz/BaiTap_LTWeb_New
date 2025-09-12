package vn.iotstar;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


	
@SpringBootApplication(scanBasePackages = {"vn.iotstar.Controller"})
@ComponentScan
public class DemoApplication {
	
	

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
