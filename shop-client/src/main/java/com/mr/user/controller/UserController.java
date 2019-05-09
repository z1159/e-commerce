package com.mr.user.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mr.shop.User;
import com.mr.user.service.UserService;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2019/4/30.
 */
@Api(tags = "用户登录模块")
@Controller
@RequestMapping("login")
public class UserController {

    @Autowired
    private UserService userService;


    //后台登录
    @RequestMapping(value = "loginUser",method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "登录")
    public ResultVo loginUser(@RequestBody User user){
        return userService.loginUser(user);
    }


    //前台登录
    @RequestMapping(value = "qianLoginUser",method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "前台登录")
    public ResultVo qianLoginUser(@RequestBody User user){
        return userService.qianLoginUser(user);
    }


    //校验账号唯一
    @RequestMapping(value = "userByName",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value = "校验账号唯一")
    public ResultVo userByName(String userName){
        return userService.userByName(userName);
    }

    //前台注册
    @RequestMapping(value = "registerUser",method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "前台注册")
    public ResultVo registerUser(@RequestBody User user){
        return userService.registerUser(user);
    }



    //查询用户列表
    @RequestMapping(value = "queryUserList")
    @ResponseBody
    @ApiOperation(value = "查询会员列表")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "page", value = "页数", required = false, dataType = "int", defaultValue = "1"),
            @ApiImplicitParam(paramType = "query", name = "limit", value = "每页条数", required = false, dataType = "int", defaultValue = "10"),
    })
    public Map<String,Object> queryUserList(Integer page, Integer data){
        if (page == null){
            page=1;
        }
        if (data == null){
            data=10;
        }
        PageHelper.startPage(page,data);
        List<User> list=userService.queryUserList();
        PageInfo<User> pageInfo=new PageInfo<User>(list);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("code",0);
        map.put("msg","");
        map.put("count",pageInfo.getTotal());
        map.put("page",pageInfo.getTotal());
        map.put("data",pageInfo.getList());
        return map;
    }

}
