package com.ah.service.Impl;

import com.ah.dao.Impl.UserDaoImpl;
import com.ah.dao.UserDao;
import com.ah.pojo.User;
import com.ah.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {
    UserDao userDao = new UserDaoImpl();

    public List<User> selectAll() {
        return userDao.selectAll();
    }

    public int updateById(User user) {
        return userDao.updateById(user);
    }

    public int deleteById(Integer id) {
        return userDao.deleteById(id);
    }

    public int addInsertUser(User user) {
        return userDao.addUser(user);
    }

}
