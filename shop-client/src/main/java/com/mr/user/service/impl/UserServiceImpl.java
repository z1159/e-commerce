package com.mr.user.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mr.shop.Commodity;
import com.mr.shop.User;
import com.mr.user.mapper.UserMapper;
import com.mr.user.service.UserService;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/**
 * Created by Administrator on 2019/4/30.
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;

    //后台登录
    @Override
    public ResultVo loginUser(User user) {
        if(null==user){
            return ResultVo.error(500,"请输入用户名或密码");
        }

        User dbUser = userMapper.loginUser(user.getUserName());

        //判断权限
        if(dbUser.getUserGrade()==1){
            return ResultVo.error(500,"对不起，您没有权限");
        }

        //判断状态
        if(dbUser.getUserState()==2){
            return ResultVo.error(500,"对不起,您的账号不可用");
        }

        //判断密码
        if(!dbUser.getUserPass().equals(dbUser.getUserPass())){
            return ResultVo.error(500,"用户名或密码错误");
        }

        return ResultVo.success("登录成功");
    }

    //前台登录
    @Override
    public ResultVo qianLoginUser(User user) {
        if(null==user){
            return ResultVo.error(500,"请输入用户名或密码");
        }

        User dbUser = userMapper.loginUser(user.getUserName());

//        //判断状态
//        if(dbUser.getUserState()==2){
//            return ResultVo.error(500,"对不起,您的账号不可用");
//        }

        //判断密码
        if(!dbUser.getUserPass().equals(dbUser.getUserPass())){
            return ResultVo.error(500,"用户名或密码错误");
        }

        return ResultVo.success("登录成功");
    }

    //校验账号唯一
    @Override
    public ResultVo userByName(String userName) {
//        Boolean bool = Pattern.matches("1\\d{10}",userName);
//        if(!bool){
//            return ResultVo.error(500,"账号格式有误.");
//        }
        User user = userMapper.loginUser(userName);
         if (user !=null){
             return ResultVo.error(500,"账号已存在，请跟换");
         }
         return ResultVo.success("校验成功，账号可以注册，请完成注册");
    }


    //前台注册
    @Override
    public ResultVo registerUser(User user) {
        if(null==user){
            return ResultVo.error(500,"请输入用户名或密码");
        }

        //校验用户名
        User dbUser = userMapper.loginUser(user.getUserName());

        //校验用户唯一
       if(null != dbUser){
           return ResultVo.error(500,"该用户已存在,请跟换");
       }

       //添加用户
        userMapper.saveUser(user);
        return ResultVo.success("恭喜用户["+user.getUserName()+"]注册成功");
    }


    @Override
    public List<User> queryUserList() {
        return userMapper.queryUserList();
    }




}
