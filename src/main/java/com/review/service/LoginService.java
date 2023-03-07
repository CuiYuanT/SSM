package com.review.service;

import com.review.dao.mapper.UserMapper;
import com.review.pojo.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;

import java.io.IOException;

@Service
public class LoginService {

    public boolean login(String userId,String password){

        SqlSessionFactory sqlSessionFactory = null;
        SqlSession sqlSession=null;
        User user=null;

        try {
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("mybatis.xml"));
            sqlSession = sqlSessionFactory.openSession();
            UserMapper userDao = sqlSession.getMapper(UserMapper.class);
            user = userDao.selectByUserId(userId, password);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        }

        if(user.getUserName()!=null){
            return true;
        }else {
            return false;
        }
    }
}
