package com.mr.footprint.service;

import com.mr.shop.Commodity;
import com.mr.shop.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by asus on 2019/5/7.
 */
public class FootError implements  FootPrintService{
    @Override
    public String zujiMogo( Commodity commodity) {
        return "咱也不敢问咱也不敢说";
    }
}
