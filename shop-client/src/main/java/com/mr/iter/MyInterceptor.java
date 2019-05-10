package com.mr.iter;

import com.mr.shop.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by z1159 on 2019/5/8.
 */
public class MyInterceptor extends HandlerInterceptorAdapter {

    /**
     * controller 执行之前调用
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
//        if (request.getRequestURI().equals("/login/loginUser")||request.getRequestURI().equals("/login/qianLoginUser")){
//            return true;
//        }
//        User user = (User) request.getSession().getAttribute("user");
//        User superUser = (User) request.getSession().getAttribute("superUser");
//        if (null==user&&null==superUser){
//            return false;
//        }
//        System.out.println("已登录-------------------------------------"+user+superUser);
        return true;
    }

    /**
     * controller 执行之后，且页面渲染之前调用
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
        System.out.println("------postHandle-----");
    }

    /**
     * 页面渲染之后调用，一般用于资源清理操作
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        System.out.println("------afterCompletion-----");

    }


}
