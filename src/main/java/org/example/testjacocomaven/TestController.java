package org.example.testjacocomaven;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {

    @GetMapping("/get")
    public void test(){
        System.out.println("TestController.test");
        TestService testService = new TestService();
        testService.call();
    }
    @GetMapping("/get2")
    public void test3(){
        System.out.println("TestController.test");
        TestService testService = new TestService();
        testService.call();
    }
}
