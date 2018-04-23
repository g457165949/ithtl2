package com.ven.user.controller;

import com.ven.controller.ApiController;
import com.ven.user.entity.WkUserBase;
import com.ven.user.service.IUserService;
import com.ven.util.RHelp;
import com.ven.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user/*")
public class UserController extends ApiController{

    @Autowired
    private IUserService userService;

    @RequestMapping("info")
    public Result getUserInfo(WkUserBase userBase){
        System.out.println("WkUserBase"+userBase);
        return RHelp.T(userService.findByPhone(userBase));
    }

}
