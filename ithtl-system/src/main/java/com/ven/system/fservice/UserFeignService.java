package com.ven.system.fservice;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(value = "user-service")
public interface UserFeignService {

    @RequestMapping(value="/user/info",method= RequestMethod.GET)
    String getUserInfo(@RequestParam("phone") String phone);

}
