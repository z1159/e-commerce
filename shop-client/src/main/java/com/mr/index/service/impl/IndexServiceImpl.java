package com.mr.index.service.impl;

import com.mr.index.mapper.IndexMapper;
import com.mr.index.service.IndexService;
import com.mr.shop.CommodityType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by asus on 2019/4/29.
 */
@Service
public class IndexServiceImpl implements IndexService{

    @Autowired
    private IndexMapper indexMapper;

    @Override
    public List<CommodityType> queryCommtype() {
        return indexMapper.queryCommtype();
    }
}
