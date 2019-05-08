package com.mr.footprint.controller;

import com.mr.footprint.service.FootPrintService;
import com.mr.shop.Commodity;
import com.mr.shop.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by asus on 2019/5/7.
 */
@RestController
@RequestMapping("footPrintController")
public class FootPrintController {

    @Autowired
    private FootPrintService footPrintService;


    @GetMapping("sessionMoni")
    public String sessionMoni(HttpServletResponse response, HttpServletRequest request) {
        User user = new User();
        user.setUserId(1);
        request.getSession().setAttribute("user", user);
        return "session中已经成功存入一个对象";
    }

    @GetMapping
    public void zujiMogo(HttpServletResponse response, HttpServletRequest request, Commodity commodity) {
        User user=(User) request.getSession().getAttribute("user");
        commodity.setUserId(user.getUserId());
        footPrintService.zujiMogo(commodity);

    }
}