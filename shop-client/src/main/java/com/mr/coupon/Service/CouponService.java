package com.mr.coupon.Service;

import com.mr.shop.ComCoupon;
import com.mr.shop.Commodity;
import com.mr.shop.Coupon;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by z1159 on 2019/5/7.
 */

public interface CouponService {
    DataVo queryCouponList(Page page);

    ResultVo addCoupon(Coupon coupon);

    ResultVo deleteCoupon(Integer couponId);

    Coupon selectByCouponId(Integer couponId);

    List<ComCoupon> openQtCoupon();
}
