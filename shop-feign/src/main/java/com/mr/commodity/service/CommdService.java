package com.mr.commodity.service;

import com.mr.shop.Commodity;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import feign.Param;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by z1159 on 2019/5/5.
 */
@FeignClient(value="provider-hello")
@Component
public interface CommdService {

    @RequestMapping(value="/commd/queryCommdList",method = RequestMethod.POST)
    DataVo queryCommdList(@RequestBody Page page);

    @RequestMapping(value="/commd/addCommd",method = RequestMethod.POST, consumes = "application/json")
    ResultVo<Commodity> addCommd(@RequestBody Commodity commodity);

    @RequestMapping(value="/commd/deleteCommd",method = RequestMethod.GET)
    ResultVo<Commodity> deleteCommd(@RequestParam("commtId") Integer commtId);

    @RequestMapping(value="/commd/selectByCommId",method = RequestMethod.GET)
    Commodity selectByCommId(@RequestParam("commtId") Integer commtId);
}
