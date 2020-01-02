package org.mpct.blood;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages= {"org.mpct.blood.controller","org.mpct.blood.model","org.mpct.blood.repository"})

public class BloodDonationSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(BloodDonationSystemApplication.class, args);
	}

}
