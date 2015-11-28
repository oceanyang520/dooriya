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
public class UserDaoImpl extends BaseHibernateTemplate  implements UserDao  {

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
    @SuppressWarnings("unchecked")
    public int testAdd(Test test) {
        
//        Test test1 = (Test) this.getHibernateTemplate().get(Test.class, 43);
//                .find("from Test where id = 43");
//        test1.setName("杨海洋1ddddd2");
//        test1.setId(43);
//        this.getHibernateTemplate().get();
        this.getHibernateTemplate().save(test);
//        this.getHibernateTemplate().update(test1);
//        int flag = this.getHibernateTemplate().execute(new HibernateCallback() {
//            public Object doInHibernate(org.hibernate.Session session)
//                      throws HibernateException, SQLException {
//                  // TODO Auto-generated method stub
//                  Query query = session.createSQLQuery("update test set name = '很烦' where id = '44'");
////                          createQuery("insert into test(name) values ('测试事务333')");
//                  int flag = query.executeUpdate();
//                  return flag;
//              }
//          });
        int flag = 0;
        return flag;
    }
    
//    测试事务
    @SuppressWarnings("unchecked")
    public int addMenuRole(){
        
      int flag = this.getHibernateTemplate().execute(new HibernateCallback() {
          public Object doInHibernate(org.hibernate.Session session)
                    throws HibernateException, SQLException {
                // TODO Auto-generated method stub
                Query query = session.createQuery("insert into menu(menuName) values('测试事务')");
                int flag = query.executeUpdate();
                return flag;
            }
        });
        String a = null; a.toString();
        if(flag>0){
            Test test = new Test();
            test.setName("测试事务");
           flag = (Integer) this.getHibernateTemplate().save(test);
        }
        return flag;
    }

}
