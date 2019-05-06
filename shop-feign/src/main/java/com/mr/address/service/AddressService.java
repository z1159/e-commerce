package com.mr.address.service;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Lenovo on 2019/4/30.
 */
@FeignClient(value = "provider-hello",fallback = AddressError.class)
public interface AddressService {
    @RequestMapping(value = "addAddress",method = RequestMethod.POST)
    void addAddress();
}
