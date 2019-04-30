package com.mr.commentList.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("CommentListController")
public class CommentListController {

    /**
     * 进入发表评论页面url:localhost:8765/CommentListController/goToCommentList
     * @return
     */
    @GetMapping("goToCommentList")
    public ModelAndView goToCommentList(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("bj/commentList");
        return mv;
    }

}
