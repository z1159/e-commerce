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


    //注册
    @Override
    public ResultVo registerUser(User user) {
        //判断用户名
       User dbUser = userMapper.loginUser(user.getUserName());

       if(null!= dbUser){
           return ResultVo.error(500,"该用户已存在,请跟换");
       }
       //校验手机号
        if(null !=dbUser){
           if (!user.getUserPhone().equals(user.getUserPhone())){
               return ResultVo.error(500,"手机号已存在,请跟换");
           }
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
