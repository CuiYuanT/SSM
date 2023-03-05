package com.review.controller;

import com.review.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {

    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String login(HttpServletRequest request, HttpServletResponse response){
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        boolean b = new LoginService().login(username, password);
        if(b){
            return "List";
        }else {
            return "error";
        }
    }

}
