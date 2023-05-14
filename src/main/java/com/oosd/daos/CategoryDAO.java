package com.oosd.daos;

import com.oosd.models.Category;
import com.oosd.utils.HibernateUtil;
import org.hibernate.Session;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.Collections;
import java.util.List;

public class CategoryDAO {
   public List<Category> getAll() {
      List<Category> categories = Collections.emptyList();
      try (Session session = HibernateUtil.getSessionFactory().openSession()) {
         CriteriaBuilder builder = session.getCriteriaBuilder();
         CriteriaQuery<Category> criteriaQuery = builder.createQuery(Category.class);
         criteriaQuery.from(Category.class);
         categories = session.createQuery(criteriaQuery).getResultList();
      } catch (Exception e) {
         e.printStackTrace();
      }
      return categories;
   }

   public Category get(int id) {
      Category category = null;
      try (Session session = HibernateUtil.getSessionFactory().openSession()) {

         category = session.get(Category.class, id);

      } catch (Exception e) {
         e.printStackTrace();
      }
      return category;
   }
}
