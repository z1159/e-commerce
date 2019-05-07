package com.mr.commodity.service;

import com.mr.shop.Commodity;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;

/**
 * Created by z1159 on 2019/4/29.
 */
public interface CommdService {
    DataVo queryCommdList(Page page);

    ResultVo addCommd(Commodity commodity);

    ResultVo deleteCommd(Integer commtId);

    Commodity selectByCommId(Integer commtId);
}
