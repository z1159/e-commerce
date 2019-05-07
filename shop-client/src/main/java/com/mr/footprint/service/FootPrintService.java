package com.mr.footprint.service;

import com.mr.shop.Commodity;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by asus on 2019/5/6.
 */
public interface FootPrintService {
    void zujiMogo(HttpServletResponse response, HttpServletRequest request, Commodity commodity);
}
