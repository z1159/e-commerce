package com.mr.commodity.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mr.commodity.mapper.CommdMapper;
import com.mr.commodity.service.CommdService;
import com.mr.shop.Commodity;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by z1159 on 2019/4/29.
 */
@Service
@Transactional
public class CommdServiceImpl implements CommdService {

    @Autowired
    private CommdMapper commdMapper;

    @Override
    public DataVo queryCommdList(Page page) {
        if(page.getPage()==null){
            page = new Page();
        }
        PageHelper.startPage(page.getPage(),page.getLimit());
        List<Commodity> bankList = commdMapper.queryCommdList();
        PageInfo<Commodity> pageInfo = new PageInfo(bankList);
        DataVo dataVo = new DataVo();
        dataVo.setCode(0);
        dataVo.setCount(pageInfo.getTotal());
        dataVo.setData(pageInfo.getList());
        return dataVo;
    }
}
