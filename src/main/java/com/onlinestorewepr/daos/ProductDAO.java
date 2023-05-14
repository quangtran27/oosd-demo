package com.onlinestorewepr.daos;

import com.onlinestorewepr.models.Product;
import com.onlinestorewepr.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.Collections;
import java.util.List;

public class ProductDAO {
   private Transaction transaction = null;

   public void insert(Product product) {
      try (Session session = HibernateUtil.getSessionFactory().openSession()) {
         transaction = session.beginTransaction();

         session.save(product);

         transaction.commit();
      } catch (Exception e) {
         e.printStackTrace();
         if (transaction != null) {
            transaction.rollback();
         }
      }
   }

   public Product get(int id) {
      Product product = null;
      try (Session session = HibernateUtil.getSessionFactory().openSession()) {
         product = session.get(Product.class, id);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return product;
   }

   public List<Product> getAll() {
      List<Product> products = Collections.emptyList();
      try (Session session = HibernateUtil.getSessionFactory().openSession()) {
         CriteriaBuilder builder = session.getCriteriaBuilder();
         CriteriaQuery<Product> criteriaQuery = builder.createQuery(Product.class);
         criteriaQuery.from(Product.class);
         products = session.createQuery(criteriaQuery).getResultList();
      } catch (Exception e) {
         e.printStackTrace();
      }
      return products;
   }

   public List<Product> getListProByName(String productKeyword) {
      return Collections.emptyList();
   }
}
