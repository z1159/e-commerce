package com.mr.footprint.controller;

import com.mr.footprint.service.FootPrintService;
import com.mr.shop.Commodity;
import com.mr.shop.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


/**
 * Created by asus on 2019/5/6.
 */
@Controller
@RequestMapping("foot")
public class FootPrintController {

    @Autowired
    private FootPrintService footPrintService;


    @RequestMapping(value ="zujiMogo",method = RequestMethod.POST)
    @ResponseBody
    public String zujiMogo(@RequestBody Commodity commodity){
        footPrintService.zujiMogo( commodity);
        return "mogondb新增成功";
    }

}
