package com.ven.system.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ven.controller.ApiController;
import com.ven.system.feignInterface.UserFeignService;
import com.ven.system.service.IUserService;
import com.ven.util.RHelp;
import com.ven.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/users/*")
public class UserController extends ApiController{

    @Autowired
    private IUserService userService;

    @Autowired
    private UserFeignService userFeignService;

    @GetMapping("list")
    public Result getSysUserList(){
       PageHelper.startPage(pageBean());
       return RHelp.T(new PageInfo(userService.findAll()));
    }

    @GetMapping("info")
    public String getInfo(@RequestParam String phone){
        System.out.println("Phone"+phone);
        return userFeignService.getUserInfo(phone);
    }
}
