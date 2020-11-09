package com.ah.dao;

import com.ah.pojo.User;

import java.util.List;

public interface UserDao {
    List<User> selectAll();

    int updateById(User user);

    int deleteById(Integer id);

    int addUser(User user);
}
