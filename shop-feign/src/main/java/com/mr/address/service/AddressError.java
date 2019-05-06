package com.mr.address.service;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;

/**
 * Created by Lenovo on 2019/4/30.
 */
@Component
public class AddressError implements AddressService {

    @Override
    public void addAddress() {

    }
}
