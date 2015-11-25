package com.ocean.frame.main.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(produces = { "text/html;charset=UTF-8" })
public class UserAction {

    @RequestMapping("login")
//    @ResponseBody
    public String loginTest(){
        System.out.println("come in contrallor@@@@@@@");
        return "login";
    }
}
