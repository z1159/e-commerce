package com.mr.coupon.controller;

import com.mr.coupon.service.CouponService;
import com.mr.shop.Coupon;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by z1159 on 2019/5/7.
 */
@RequestMapping("coupon")
@Controller
public class CouponController {

    @Autowired
    private CouponService couponService;

    //查询优惠券列表 分页
    @RequestMapping("queryCouponList")
    @ResponseBody
    public DataVo queryCouponList(Page page){
//        page.setLimit(2);
        DataVo dataVo = couponService.queryCouponList(page);
        return dataVo;
    }

    //打开优惠券列表查询页
    @RequestMapping("openCouponList")
    public ModelAndView openCouponList(){
        ModelAndView mv = new ModelAndView();

        mv.setViewName("/zcf/ht/coupon-list");

        return mv;
    }
    //打开新增页
    @RequestMapping("openCouponAdd")
    public ModelAndView openCouponAdd(){
        ModelAndView mv = new ModelAndView();

        mv.setViewName("/zcf/ht/coupon-add");

        return mv;
    }
    //新增/修改优惠券
    @RequestMapping("addCoupon")
    @ResponseBody
    public ResultVo<Coupon> addCoupon(Coupon coupon){
        ResultVo<Coupon> rsVo = couponService.addCoupon(coupon);
        return rsVo;
    }
    //删除优惠券
    @RequestMapping("deleteCoupon/{couponId}")
    @ResponseBody
    public ResultVo<Coupon> deleteCoupon(@PathVariable("couponId") Integer couponId){
        ResultVo<Coupon> rstVo = couponService.deleteCoupon(couponId);
        return rstVo;
    }

    //打开修改优惠券页
    @RequestMapping("openCouponUpdate/{couponId}")
    public ModelAndView openCouponUpdate(@PathVariable("couponId") Integer couponId){
        Coupon coupon = couponService.selectByCouponId(couponId);
        ModelAndView mv = new ModelAndView();
        mv.addObject("cp",coupon);
        mv.setViewName("/zcf/ht/coupon-add");

        return mv;
    }

}
