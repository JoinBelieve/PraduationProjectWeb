package com.beli.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;

import com.beli.hibernateutil.HibernateUtil;


public class BaseDao<T> {
	// 实现数据库的增删该查的方法
	// 插入数据的方法
	public boolean add(T object) {
		boolean flag = true;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			// 打开事务
			session.beginTransaction();
			// 进行的数据库的操作
			session.persist(object);
			session.getTransaction().commit();
			System.out.println("Add");
			flag = true;
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("roolback");
			flag = false;
		}
		session.close();
		return flag;
	}

	// 查询数据表中所有数据的信息
	public List<T> selectAll(String hql) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			System.out.println("select");
			System.out.println("list.size="+session.createQuery(hql).list().size());
			return session.createQuery(hql).list();
		} finally {
			
			session.getTransaction().commit();
			session.close();
		}

	}

	public T selectOne(Class<? extends T> clazz, Serializable id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			// hql:hibernate sql;
			return (T) session.get(clazz, id);
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}

	public void update(T object) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			session.update(object);
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
		}
		session.close();
	}

	public boolean delete(T object) {
		boolean flag = true;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			session.delete(object);
			session.getTransaction().commit();			
		} catch (Exception e) {
			session.getTransaction().rollback();
			flag = false;
		}
		
		session.close();
		return flag;
	}
	
	public List<T> search(String hql){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			// hql:hibernate sql;
			return session.createQuery(hql).list();
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}
	public Number getNum(String hql){
//		
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			return (Number)session.createQuery(hql).uniqueResult();
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}
	public int getId(String hql){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();			
			 Number number = (Number)session.createQuery(hql).uniqueResult();
			 return number.intValue();
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}

}
