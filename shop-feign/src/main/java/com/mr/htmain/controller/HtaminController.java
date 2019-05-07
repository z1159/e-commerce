package com.mr.htmain.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by z1159 on 2019/5/5.
 */
@Controller
@RequestMapping
public class HtaminController {

    @RequestMapping("opHtMain")
    public String opHtMain(){

        return "/zcf/main-ht";
    }
}
