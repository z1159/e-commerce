package com.mr.index.service;

import com.mr.shop.CommodityType;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Map;

/**
 * Created by asus on 2019/4/29.
 */
@FeignClient(value = "provider-hello",fallback = HellowError.class)
public interface IndexService {

    @RequestMapping(value = "queryCommtype",method = RequestMethod.GET)
    List<CommodityType> queryCommtype();
    @RequestMapping(value = "solrQueryCommodity/{commTitle}/{page}/{size}",method = RequestMethod.GET)
    Map<String,Object> solrQueryCommodity(@PathVariable("commTitle") String commTitle,@PathVariable("page") Integer page,@PathVariable("size") Integer size);
}
