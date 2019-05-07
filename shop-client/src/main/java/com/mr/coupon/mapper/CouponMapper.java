package com.mr.coupon.mapper;

import com.mr.shop.Coupon;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by z1159 on 2019/5/7.
 */
@Component
@Mapper
public interface CouponMapper {
    List<Coupon> queryCouponList();

    void insertCoupon(Coupon coupon);

    void updateCoupon(Coupon coupon);

    void deleteCoupon(Integer couponId);

    Coupon selectByCouponId(Integer couponId);
}
