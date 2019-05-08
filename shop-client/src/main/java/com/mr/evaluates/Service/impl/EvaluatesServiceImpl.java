package com.mr.evaluates.Service.impl;

import com.mr.evaluates.Service.EvaluatesService;
import com.mr.evaluates.mapper.EvaluatesMapper;
import com.mr.shop.Evaluates;
import com.mr.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2019/4/30.
 */
@Service
public class EvaluatesServiceImpl implements EvaluatesService {

    @Autowired
    private EvaluatesMapper evaluatesMapper;

}
