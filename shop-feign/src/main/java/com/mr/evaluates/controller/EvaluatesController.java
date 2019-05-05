package com.mr.evaluates.controller;

import com.mr.evaluates.service.EvaluatesService;
import com.mr.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@RestController
@RequestMapping("EvaluatesController")
public class EvaluatesController {

    @Autowired
    private EvaluatesService evaluatesService;

    /**
     * 进入发表评论页面url:localhost:8765/EvaluatesController/goToCommentList
     * @return
     */
    @GetMapping("goToEvaluates")
    public ModelAndView goToEvaluates(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("bj/evaluates");
        return mv;
    }

    //查询评价列表
    @GetMapping("queryComList")
    public Map<String,Object> queryEvaList(Page page){
        return evaluatesService.queryEvaList(page);
    }

}
