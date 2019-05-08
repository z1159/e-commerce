package com.mr.user.controller;

import com.mr.shop.Commodity;
import com.mr.shop.User;
import com.mr.user.service.UserService;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * Created by z1159 on 2019/4/27.
 */
@Controller
@RequestMapping()
public class UserController {
    @Autowired
    private UserService userService;


    //跳转后台登录页面
    @RequestMapping("toLogin")
    public ModelAndView toLogin(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user/login");
        return mv;
    }

    //跳转列表页面
    @RequestMapping("toUserList")
    public ModelAndView toUserList(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user/userList");
        return mv;
    }

    //跳转后台主页页面
    @RequestMapping("toIndexMain")
    public ModelAndView toIndexMain(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("zcf/main-ht");
        return mv;
    }

    //跳转前台登录页面
    @RequestMapping("toQianLogin")
    public ModelAndView toIndex(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login");
        return mv;
    }

    //跳转前台主页页面
    @RequestMapping("toQianIndex")
    public ModelAndView toQianIndex(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }


    //跳转注册页面
    @RequestMapping("toRegister")
    public ModelAndView toRegister(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("register");
        return mv;
    }


    //跳转查询列表页面
    @RequestMapping("toQueryList")
    public ModelAndView toQueryList(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user/userList");
        return mv;
    }


    //后台登录
    @RequestMapping("loginUser")
    @ResponseBody
    public ResultVo loginUser(User user){
        return userService.loginUser(user);
    }


    //前台登录
    @RequestMapping("qianLoginUser")
    @ResponseBody
    public ResultVo qianLoginUser(User user){
        return userService.qianLoginUser(user);
    }

    //前台注册
    @RequestMapping("registerUser")
    @ResponseBody
    public ResultVo registerUser(User user){
        return userService.registerUser(user);
    }


    //查询用户列表
    @RequestMapping("queryUserList")
    @ResponseBody
    public Map<String,Object> queryUserList(Integer page, Integer data){
        return userService.queryUserList(page,data);
    }


}
