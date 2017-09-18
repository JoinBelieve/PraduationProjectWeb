package com.beli.action;

import com.beli.dao.BaseDao;
import com.beli.pojo.User;
import com.beli.util.MD5Util;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;
	private BaseDao<User> dao = new BaseDao<User>();
	
	public String loginUserAction(){
		return "login";
	}
	public String registerUserAction(){
		user.setPwd(MD5Util.getMd5String(user.getPwd()));
		dao.add(user);
		return SUCCESS;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public BaseDao<User> getDao() {
		return dao;
	}
	public void setDao(BaseDao<User> dao) {
		this.dao = dao;
	}
	
}
