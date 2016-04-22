package com.ocean.frame.main.action;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ocean.frame.main.entity.User;
import com.ocean.frame.main.service.UserService;

@Controller
@RequestMapping(value="/manage")
public class ManagerAction {
    
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
//  @ResponseBody
  public String login(String userName, String passWord, HttpSession session ){
      //注意拦截器
     //注意统一登录：用户名、邮箱、手机号码，  》》》》单点登录
      User paraUser = new User();
//      paraUser.setUserName("dooriya");
//      paraUser.setPassWord("123456");
      paraUser.setUserName(userName);
      paraUser.setPassWord(passWord);
      User user = this.userService.findUserBySelected(paraUser);
      if(user!=null&&user.getId()>0){
          session.setAttribute("user", user);
          System.out.println("come in login contrallor@@@@@@@"+user.getUserName());
//          session.setMaxInactiveInterval(900);
      }else{
          System.out.println("账户或密码错误！");
      }

      return "manager/main";
  }
    
     
    //权限控制，后台使用bootstrap
    public String getMenuByRoleId(){
        return "";
    }
    
    public String getUserList(){
        
        return "";
    }
    
    
    
}
