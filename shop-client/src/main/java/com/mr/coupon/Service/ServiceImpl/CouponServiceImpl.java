package com.mr.coupon.Service.ServiceImpl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mr.coupon.Service.CouponService;
import com.mr.coupon.mapper.CouponMapper;
import com.mr.shop.ComCoupon;
import com.mr.shop.Coupon;
import com.mr.shop.User;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by z1159 on 2019/5/7.
 */
@Service
@Transactional
public class CouponServiceImpl implements CouponService {

    @Autowired
    private CouponMapper couponMapper;
    @Override
    public DataVo queryCouponList(Page page) {
        if(page.getPage()==null){
            page = new Page();
        }
        PageHelper.startPage(page.getPage(),page.getLimit());
        List<Coupon> bankList = couponMapper.queryCouponList();
        PageInfo<Coupon> pageInfo = new PageInfo(bankList);
        DataVo dataVo = new DataVo();
        dataVo.setCode(0);
        dataVo.setCount(pageInfo.getTotal());
        dataVo.setData(pageInfo.getList());
        return dataVo;
    }

    @Override
    public ResultVo addCoupon(Coupon coupon) {
        if (null==coupon.getCouponId()){
            couponMapper.insertCoupon(coupon);
            return ResultVo.success("新增成功");
        }
        couponMapper.updateCoupon(coupon);

        return ResultVo.success("修改成功");
    }

    @Override
    public ResultVo deleteCoupon(Integer couponId) {
        if (null==couponId){
            return ResultVo.error(404,"删除错误,找不到ID");
        }
        couponMapper.deleteCoupon(couponId);
        return ResultVo.success("删除成功");
    }

    @Override
    public Coupon selectByCouponId(Integer couponId) {
        if (null==couponId){
            return new Coupon();
        }
        Coupon coupon = couponMapper.selectByCouponId(couponId);

        return coupon;
    }

    @Override
    public List<ComCoupon> openQtCoupon() {
        ServletRequestAttributes servletRequestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = servletRequestAttributes.getRequest();
        User user = (User) request.getSession().getAttribute("user");
        List<ComCoupon> comCouponList = couponMapper.openQtCoupon(1);

        return comCouponList;
    }
}
