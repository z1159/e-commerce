package com.mr.address.controller;

import com.mr.address.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Lenovo on 2019/4/30.
 */
@RestController
@RequestMapping("addressController")
public class addressController {
    @Autowired
    private AddressService addressService;

    @GetMapping("gotoIndex")
    public ModelAndView gotoIndex(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/address/dizhi");
        //   System.out.println(1);
        return modelAndView;
    }
}
