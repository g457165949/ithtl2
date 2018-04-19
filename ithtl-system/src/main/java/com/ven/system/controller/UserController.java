package com.ven.system.controller;

import com.ven.system.entity.SysUser;
import com.ven.system.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/users/*")
public class UserController {

    @Autowired
    private SysUserService userService;

    @GetMapping("list")
    public Map<Object, Object> list(SysUser user){
        Map<Object, Object> jsonMap = new HashMap<Object, Object>();
        jsonMap.put("data", userService.findAll(user));
        jsonMap.put("msg", "");
        jsonMap.put("code", 0);
        return jsonMap;
    }
}
