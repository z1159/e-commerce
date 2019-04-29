package com.mr.index.mapper;

import com.mr.shop.CommodityType;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created by asus on 2019/4/29.
 */
@Mapper
public interface IndexMapper {
    List<CommodityType> queryCommtype();
}
