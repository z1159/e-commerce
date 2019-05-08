package com.mr.main.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by asus on 2019/5/8.
 */
@RestController
@RequestMapping("mainController")
public class MainController {


    @GetMapping("openMain")
    public ModelAndView openMain(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("main");
        return modelAndView;
    }

}
