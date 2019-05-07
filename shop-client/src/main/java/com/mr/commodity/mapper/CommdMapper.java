package com.mr.commodity.mapper;

import com.mr.shop.Commodity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

/**
 * Created by z1159 on 2019/4/29.
 */
@Component
@Mapper
public interface CommdMapper {

    List<Commodity> queryCommdList();

    void insertCommodityType(Commodity commodity);

    void insertCommodity(Commodity commodity);

    void delateCommd( Integer commtId);

    void delateCommdType( Integer commtId);

    Commodity selectByCommId(Integer commtId);

    void updateCommodityType(Commodity commodity);

    void updateCommodity(Commodity commodity);
}
