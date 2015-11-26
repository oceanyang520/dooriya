package com.ocean.frame.main.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.ocean.frame.main.common.BaseHibernateTemplate;
import com.ocean.frame.main.dao.UserDao;
import com.ocean.frame.main.entity.Test;
import com.ocean.frame.main.entity.User;

@Repository
public class UserDaoImpl extends BaseHibernateTemplate implements UserDao  {

//    @Autowired
//    private HibernateTemplate hibernateTemplate;
    
//    private  Configuration cfg = new Configuration().configure();  
//    private  SessionFactory fac = cfg.buildSessionFactory();  
//    private  Session session = fac.openSession();  
    
    public List<User> findUserList() {
      List<User> userList = this.getHibernateTemplate().find("from Test");
       
//        List<User> userList = new ArrayList<User>();
       
//        Query query = session.createQuery("select * from user");
//        userList = query.list();        
//        User user = new User();
//        user.setUserName("dooriyang");
        
//        userList.add(user);
        return userList;
    }

    public int testAdd(Test test) {
        int flag = (Integer) this.getHibernateTemplate().save(test);
        return flag;
    }
    
}
