package com.ocean.frame.main.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("article")
public class ArticleController {
    
//    private 

    @RequestMapping("articleList")
    public String articleList(){
        
        
        System.out.println("come in article list");
        return "";
    }
    
}
