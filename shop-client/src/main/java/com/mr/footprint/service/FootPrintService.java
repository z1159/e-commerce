package com.mr.footprint.service;

import com.mr.shop.Commodity;
import com.mr.shop.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by asus on 2019/5/6.
 */
public interface FootPrintService {
    void zujiMogo( Commodity commodity);

    List<Commodity> queryZuJi(Integer userId);
}
