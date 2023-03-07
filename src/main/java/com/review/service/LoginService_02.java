package com.review.service;

import com.review.dao.mapper.UserMapper;
import com.review.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("LoginService_02")
public class LoginService_02 implements UserService{

    @Autowired
    private UserMapper userMapper;

    public boolean login(String userId, String password) {
        User user = userMapper.selectByUserId(userId, password);
        if(user.getUserName()!=null){
            return true;
        }else {
            return false;
        }
    }
}
