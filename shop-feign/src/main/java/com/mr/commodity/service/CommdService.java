package com.mr.commodity.service;

import com.mr.utils.DataVo;
import com.mr.utils.Page;
import feign.Param;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by z1159 on 2019/5/5.
 */
@FeignClient(value="provider-hello")
@Component
public interface CommdService {

    @RequestMapping(value="/commd/queryCommdList",method = RequestMethod.GET)
    DataVo queryCommdList(@Param("page") Page page);
}
