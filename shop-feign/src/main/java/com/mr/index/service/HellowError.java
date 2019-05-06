package com.mr.index.service;

import com.mr.shop.CommodityType;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * Created by asus on 2019/4/23.
 */
@Component
public class HellowError implements  IndexService{



    @Override
    public List<CommodityType> queryCommtype() {
        return null;
    }

    @Override
    public Map<String, Object> solrQueryCommodity(String commTitle, Integer page, Integer size) {
        return null;
    }
}
