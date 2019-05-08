package com.mr.user.service;

import com.mr.index.service.HellowError;
import com.mr.shop.User;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import feign.Param;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;

import javax.ws.rs.PathParam;
import java.util.Map;

/**
 * Created by Administrator on 2019/4/30.
 */
@FeignClient(value = "provider-hello")
@Component
public interface UserService {

    @RequestMapping(value = "/login/loginUser",method = RequestMethod.POST)
    ResultVo loginUser(@RequestBody User user);

    @RequestMapping(value = "/login/registerUser",method = RequestMethod.POST)
    ResultVo registerUser(@RequestBody User user);

    @RequestMapping(value = "/login/queryUserList",method = RequestMethod.GET)
    Map<String,Object> queryUserList(@RequestParam("page") Integer page, @RequestParam("data") Integer data);

    @RequestMapping(value = "/login/qianLoginUser",method = RequestMethod.POST)
    ResultVo qianLoginUser(@RequestBody User user);
}
