package com.mr.footprint.controller;

import com.mr.footprint.service.FootPrintService;
import com.mr.shop.Commodity;
import com.mr.shop.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

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

    @GetMapping("zujiMogo/{commId}")
    public String zujiMogo(HttpServletResponse response, HttpServletRequest request, @PathVariable Integer  commId) {
        User user=(User) request.getSession().getAttribute("user");
        Commodity commodity = new Commodity();
        commodity.setUserId(user.getUserId());
        commodity.setCommId(Integer.toString(commId));
        String s = footPrintService.zujiMogo(commodity);
    return s;
    }

    @GetMapping("queryZuJi")
    public ModelAndView queryZuJi(HttpServletResponse response, HttpServletRequest request){
        User user =(User) request.getSession().getAttribute("user");
        Integer userId = user.getUserId();
        List<Commodity> list=footPrintService.queryZuJi(userId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/zcf/zuji");
        modelAndView.addObject("comList",list);
        return modelAndView;
    }
}