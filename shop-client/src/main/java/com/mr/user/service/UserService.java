package com.mr.user.service;

import com.mr.shop.User;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;

import java.util.List;

/**
 * Created by Administrator on 2019/4/30.
 */
public interface UserService {
    ResultVo loginUser(User user);

    ResultVo registerUser(User user);

    List<User> queryUserList();

    ResultVo qianLoginUser(User user);
}
