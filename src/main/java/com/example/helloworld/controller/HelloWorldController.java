package com.example.helloworld.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author oyeyinka.onaolapo
 *
 */

@RestController
public class HelloWorldController {
    @RequestMapping("/")
    public String hello()
    {
        return "Hello Everyone";
    }
}
