package com.ven.system.service;

import com.ven.system.entity.SysUser;
import com.ven.system.mapper.SysUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysUserService {

    @Autowired
    private SysUserMapper sysUserMapper;

    public List<SysUser> findAll(SysUser user){
       return sysUserMapper.selectAll();
    }
}
