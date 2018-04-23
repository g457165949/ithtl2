package com.ven.system.service;

import com.ven.system.entity.SysUser;

import java.util.List;

public interface IUserService {

    List<SysUser> findAll();
}
