package com.mr.commodity.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mr.commodity.mapper.CommdMapper;
import com.mr.commodity.service.CommdService;
import com.mr.shop.Commodity;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
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

    @Override
    public ResultVo addCommd(Commodity commodity) {
       if (null==commodity.getCommtId()){
           commdMapper.insertCommodityType(commodity);
           System.out.println(commodity.getCommtId());
           commdMapper.insertCommodity(commodity);
           return ResultVo.success("上架成功");
       }
        commdMapper.updateCommodityType(commodity);
        System.out.println(commodity.getCommtId());
        commdMapper.updateCommodity(commodity);

        return ResultVo.success("修改成功");
    }

    @Override
    public ResultVo deleteCommd(Integer commtId) {
        if (null==commtId){
            return ResultVo.error(404,"删除错误,找不到ID");
        }
        commdMapper.delateCommd(commtId);
        commdMapper.delateCommdType(commtId);
        return ResultVo.success("删除成功");
    }

    @Override
    public Commodity selectByCommId(Integer commtId) {

        if (null==commtId){
            return new Commodity();
        }
        Commodity commodity = commdMapper.selectByCommId(commtId);

        return commodity;
    }

}
