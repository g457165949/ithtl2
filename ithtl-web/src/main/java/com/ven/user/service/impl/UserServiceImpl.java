package com.ven.user.service.impl;

import com.ven.user.entity.WkUserBase;
import com.ven.user.mapper.WkUserBaseMapper;
import com.ven.user.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private WkUserBaseMapper userBaseMapper;

    @Override
    public List<WkUserBase> findAll(){
        return userBaseMapper.selectAll();
    }

    public WkUserBase findByPhone(WkUserBase userBase){
        return userBaseMapper.selectOne(userBase);
    }

}
