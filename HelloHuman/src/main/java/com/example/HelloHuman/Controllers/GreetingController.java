package com.example.HelloHuman.Controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {

    @RequestMapping("")
    public String greet(
        @RequestParam(value = "name", defaultValue = "human") String Name,
        @RequestParam(value = "last_name", required = false) String lastName,
        @RequestParam(value = "times", defaultValue = "1") int times
    ) {
        String greeting = "Hello " + Name;
        
        if (lastName != null && !lastName.isEmpty()) {
            greeting += " " + lastName;
        }
        
        StringBuilder response = new StringBuilder();
        
        for (int i = 0; i < times; i++) {
            response.append(greeting).append(" ");
        }

        return response.toString().trim();
    }
}