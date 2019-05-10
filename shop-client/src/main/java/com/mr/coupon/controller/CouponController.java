package com.mr.coupon.controller;

import com.mr.coupon.Service.CouponService;
import com.mr.shop.ComCoupon;
import com.mr.shop.Commodity;
import com.mr.shop.Coupon;
import com.mr.shop.User;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by z1159 on 2019/5/7.
 */
@Api(tags = "优惠券模块")
@Controller
@RequestMapping("coupon")
public class CouponController {

    @Autowired
    private CouponService couponService;

    //查询商品列表
    @RequestMapping("queryCouponList")
    @ResponseBody
    @ApiOperation(value = "查询优惠券列表")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "page", value = "页数", required = false, dataType = "int", defaultValue = "1"),
            @ApiImplicitParam(paramType = "query", name = "limit", value = "每页条数", required = false, dataType = "int", defaultValue = "10"),
    })
    public DataVo queryCouponList(@RequestBody Page page){

        return couponService.queryCouponList(page);
    }
    //查询商品列表delateCommd
    @RequestMapping(value="addCoupon",method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "(优惠券新增)")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "page", value = "页数", required = false, dataType = "int", defaultValue = "1"),
            @ApiImplicitParam(paramType = "query", name = "limit", value = "每页条数", required = false, dataType = "int", defaultValue = "10"),
    })
    public ResultVo addCoupon(@RequestBody Coupon coupon){

        return couponService.addCoupon(coupon);
    }


    @RequestMapping(value="deleteCoupon",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value = "删除商品")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "couponId", value = "id", required = false, dataType = "int", defaultValue = "1"),
    })
    public ResultVo deleteCoupon(@RequestParam Integer couponId){

        return couponService.deleteCoupon(couponId);
    }


    @RequestMapping(value="selectByCouponId",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value = "根据ID查询优惠券")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "couponId", value = "id", required = false, dataType = "int", defaultValue = "1"),
    })
    public Coupon selectByCouponId(@RequestParam Integer couponId){

        return couponService.selectByCouponId(couponId);
    }

    @RequestMapping(value="openQtCoupon",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value = "根据用户ID查询优惠券")
    public List<ComCoupon> openQtCoupon(){
        return couponService.openQtCoupon();
    }
}
