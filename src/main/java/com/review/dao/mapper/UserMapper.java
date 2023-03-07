package com.review.dao.mapper;

import com.review.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {

    public User selectByUserId(@Param("userId") String userId, @Param("password") String password);


}
