package com.ven.system.service.impl;

import com.github.pagehelper.Page;
import com.ven.system.entity.SysUser;
import com.ven.system.mapper.SysUserMapper;
import com.ven.system.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private SysUserMapper sysUserMapper;

    @Override
    public List<SysUser> findAll(){
       return sysUserMapper.selectAll();
    }

}
