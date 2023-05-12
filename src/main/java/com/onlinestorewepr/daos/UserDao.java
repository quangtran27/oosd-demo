package com.onlinestorewepr.daos;

import com.onlinestorewepr.models.User;
import com.onlinestorewepr.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class UserDao {
   public void insert(User user) {
      Transaction transaction = null;
      try (Session session = HibernateUtil.getSessionFactory().openSession()) {
         transaction = session.beginTransaction();

         session.save(user);

         transaction.commit();
      } catch (Exception e) {
         e.printStackTrace();
         if (transaction != null) {
            transaction.rollback();
         }
      }
   }
   public void update(User user) {
      System.out.println("Update user");
   }
   public User get(String username) {
      User user = null;
      try (Session session = HibernateUtil.getSessionFactory().openSession()) {
         user = session.get(User.class, username);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return user;
   }

   public User findUserByEmail(String email) {
      return null;
   }
}
