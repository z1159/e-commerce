package com.mr.index.service;

import com.mr.shop.CommodityType;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by asus on 2019/4/29.
 */
@FeignClient(value = "provider-hello",fallback = HellowError.class)
public interface IndexService {

    @RequestMapping(value = "queryCommtype",method = RequestMethod.GET)
    List<CommodityType> queryCommtype();
}
