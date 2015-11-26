package com.ocean.frame.main.dao.Impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.ocean.frame.main.common.BaseHibernateTemplate;
import com.ocean.frame.main.dao.UserDao;
import com.ocean.frame.main.entity.MenuRole;
import com.ocean.frame.main.entity.Test;
import com.ocean.frame.main.entity.User;

@Repository
public class UserDaoImpl extends BaseHibernateTemplate implements UserDao  {

//    @Autowired
//    private HibernateTemplate hibernateTemplate;
    
//    private  Configuration cfg = new Configuration().configure();  
//    private  SessionFactory fac = cfg.buildSessionFactory();  
//    private  Session session = fac.openSession();  
//    Query query = session.createQuery("select * from user");
    @SuppressWarnings("unchecked")
    public List<User> findUserList() {
        
//      List<T> aaa = new ArrayList<T>();
      List<User> userList = new ArrayList<User>();
//        List<User> userList = this.getHibernateTemplate().find("from User");
        List<MenuRole> menuRoleList = this.getHibernateTemplate().find("from MenuRole");
        System.out.println(menuRoleList);
        return userList;
    }
    
    /**
     * 原生语句查询方式
    * @Description  
    * @return
    * @author yhy@goujiawang.com   
    * @date 2015年11月26日 下午9:31:59
     */
    @SuppressWarnings("unchecked")
    public List<HashMap<Object, Object>> findListByProtocal(){
        
        List<HashMap<Object, Object>> userList = new  ArrayList<HashMap<Object, Object>>();
        userList = this.getHibernateTemplate().execute(new HibernateCallback() {

        public Object doInHibernate(org.hibernate.Session session)
                throws HibernateException, SQLException {
            // TODO Auto-generated method stub
            SQLQuery query = session.createSQLQuery("select * from menuRole");
            query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
            return query.list();
        }
        });
        return userList;
    }
    public int testAdd(Test test) {
        
        int flag = (Integer) this.getHibernateTemplate().save(test);
        return flag;
    }
    
}
