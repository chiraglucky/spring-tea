package com.example.springtea;

import com.example.springtea.Service.TeaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringTeaApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringTeaApplication.class, args);
    }
}
