package com.ah.service;

import com.ah.pojo.User;

import java.util.List;

public interface UserService {
    public List<User> selectAll();

    int updateById(User user);

    int deleteById(Integer id);

    int addInsertUser(User user);
}
