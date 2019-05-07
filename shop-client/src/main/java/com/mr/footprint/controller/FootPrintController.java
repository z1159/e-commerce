package com.mr.footprint.controller;

import com.mr.footprint.service.FootPrintService;
import com.mr.shop.Commodity;
import com.mr.shop.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


/**
 * Created by asus on 2019/5/6.
 */
@RestController
public class FootPrintController {

    @Autowired
    private FootPrintService footPrintService;


    @GetMapping("zujiMogo")
    public void zujiMogo(Commodity commodity){
        footPrintService.zujiMogo(commodity);
    }

}
