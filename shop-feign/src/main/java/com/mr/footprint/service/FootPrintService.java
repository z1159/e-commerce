package com.mr.footprint.service;

import com.mr.index.service.HellowError;
import com.mr.shop.Commodity;
import com.mr.shop.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by asus on 2019/5/7.
 */
@FeignClient(value = "provider-hello",fallback = FootError.class)
public interface FootPrintService {

    @RequestMapping(value = "/foot/zujiMogo",method = RequestMethod.POST,consumes = "application/json")
    String zujiMogo(@RequestBody  Commodity commodity);
}
