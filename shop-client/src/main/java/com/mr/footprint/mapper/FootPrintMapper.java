package com.mr.footprint.mapper;

import com.mr.shop.Commodity;
import org.apache.ibatis.annotations.Mapper;

/**
 * Created by asus on 2019/5/8.
 */
@Mapper
public interface FootPrintMapper {


    Commodity selectByCommId(int commId);
}
