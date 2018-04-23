package com.ven.user.service;

import com.ven.user.entity.WkUserBase;

import java.util.List;

public interface IUserService {
    List<WkUserBase> findAll();

    WkUserBase findByPhone(WkUserBase userBase);
}
