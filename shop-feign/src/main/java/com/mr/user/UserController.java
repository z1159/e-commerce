package com.mr.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by z1159 on 2019/4/27.
 */
@Controller
@RequestMapping("login")
public class UserController {


    @RequestMapping("hello")
    public String test1(Model model){

        return "/login";
    }

}
