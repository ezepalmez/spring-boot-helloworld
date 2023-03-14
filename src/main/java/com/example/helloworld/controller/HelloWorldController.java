package com.example.helloworld.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * 
 *
 */

@RestController
public class HelloWorldController {
    @RequestMapping("/api")
    public String hello()
    {
        return "Hello Everyone";
    }
}
