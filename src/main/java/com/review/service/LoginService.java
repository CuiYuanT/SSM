package com.review.service;

import com.review.pojo.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.core.io.Resource;

import java.io.IOException;

public class LoginService {

//    public boolean login(String username,String password){
//        if("root".equals(username)){
//            if("111111".equals(password)){
//                return true;
//            }else {
//                return false;
//            }
//        }else {
//            return false;
//        }
//    }

    public boolean login(String userId,String password){

        SqlSessionFactory sqlSessionFactory = null;
        SqlSession sqlSession=null;
        User user=null;

        try {
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("mybatis.xml"));
            sqlSession = sqlSessionFactory.openSession();
            user =(User) sqlSession.selectOne("aaaaa.selectByUserId", new User(userId, password, null));
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
