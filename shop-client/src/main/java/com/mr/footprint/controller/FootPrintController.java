package com.mr.footprint.controller;

import com.mr.footprint.service.FootPrintService;
import com.mr.shop.Commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by asus on 2019/5/6.
 */
@Controller
@RequestMapping("footPrintController")
public class FootPrintController {

    @Autowired
    private FootPrintService footPrintService;


    @GetMapping("zujiMogo")
    public void zujiMogo(HttpServletResponse response, HttpServletRequest request, Commodity commodity){
        footPrintService.zujiMogo(response,request,commodity);
    }

}
