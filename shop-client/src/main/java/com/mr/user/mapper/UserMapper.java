package com.mr.user.mapper;

import com.mr.shop.User;
import com.mr.utils.Page;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2019/4/30.
 */
@Mapper
public interface UserMapper {

    User loginUser(String userName);

    void saveUser(User user);

    List<User> queryUserList();

}
