package com.mr.user.controller;

import com.mr.shop.User;
import com.mr.user.service.UserService;
import com.mr.utils.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by z1159 on 2019/4/27.
 */
@RestController
@RequestMapping("login")
public class UserController {
    @Autowired
    private UserService userService;


    @RequestMapping("hello")
    public String test1(Model model){

        return "/login";
    }


    //跳转登录页面
    @GetMapping("login")
    public ModelAndView login(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user/login");
        return mv;
    }


    //登录
    @GetMapping("loginUser")
    public ResultVo loginUser(User user){
        return userService.loginUser(user);
    }


    //注册
    @PostMapping("registerUser")
    public ResultVo registerUser(User user){
        return null;
    }

}
