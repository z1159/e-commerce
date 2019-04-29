package com.mr.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by asus on 2019/4/29.
 */
@RestController
@RequestMapping("indexController")
public class IndexController {

    @GetMapping("gotoIndex")
    public ModelAndView gotoIndex(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
     //   System.out.println(1);
        return modelAndView;
    }

}
