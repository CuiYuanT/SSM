package com.review.dao;

import com.review.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {

    public User selectByUserId(@Param("userId") String userId, @Param("password") String password);


}
