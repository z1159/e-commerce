package com.mr.commodity.mapper;

import com.mr.shop.Commodity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by z1159 on 2019/4/29.
 */
@Component
@Mapper
public interface CommdMapper {

    List<Commodity> queryCommdList();
}
