package br.com.age2deapi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GreetingController {

    @GetMapping("")
    public ModelAndView index(){
        return new ModelAndView("redirect:/swagger-ui.html#/Content");
    }
}