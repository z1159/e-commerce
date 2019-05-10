package com.mr.coupon.service;

import com.mr.shop.ComCoupon;
import com.mr.shop.Coupon;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by z1159 on 2019/5/7.
 */
@FeignClient(value="provider-hello")
@Component
public interface CouponService {

    @RequestMapping(value="/coupon/queryCouponList",method = RequestMethod.POST)
    DataVo queryCouponList(@RequestBody Page page);

    @RequestMapping(value="/coupon/addCoupon",method = RequestMethod.POST, consumes = "application/json")
    ResultVo<Coupon> addCoupon(@RequestBody Coupon coupon);

    @RequestMapping(value="/coupon/deleteCoupon",method = RequestMethod.GET)
    ResultVo<Coupon> deleteCoupon(@RequestParam("couponId") Integer couponId);

    @RequestMapping(value="/coupon/selectByCouponId",method = RequestMethod.GET)
    Coupon selectByCouponId(@RequestParam("couponId")Integer couponId);

    @RequestMapping(value="/coupon/openQtCoupon",method = RequestMethod.GET)
    List<ComCoupon> openQtCoupon();

    @RequestMapping(value="/coupon/queryCouponListByState",method = RequestMethod.GET)
    List<Coupon> queryCouponListByState(@RequestParam("couponState") Integer couponState);


}
