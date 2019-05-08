package com.mr.evaluates.service;

import com.mr.utils.Page;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * Created by Administrator on 2019/4/30.
 */
@FeignClient(value = "provider-hello")
@Component
public interface EvaluatesService {


}
