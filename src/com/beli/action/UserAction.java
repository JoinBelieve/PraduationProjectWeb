package com.beli.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.beli.dao.BaseDao;
import com.beli.pojo.User;
import com.beli.util.MD5Util;
import com.opensymphony.xwork2.ActionSupport;



public class UserAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;
	private BaseDao<User> dao = new BaseDao<User>();
	private HttpServletResponse response;
	private HttpServletRequest request;
	
//	用户注册
	public String registerUserAction() throws IOException{
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();    	    
		user.setPwd(MD5Util.getMd5String(user.getPwd()));
		// 查找该用户是否存在
		Number num = dao.getNum("select count(*) from User u where u.u_name='" + user.getU_name() + "'");
		System.out.println("num=" + num);
		int count = num.intValue();
		if(count < 1){
//			注册成功
			dao.add(user);			
		}else if(count==1){
			out.println("<script>alert('用户名已存在');window.location.href='register.jsp';</script>");  
		    out.flush();  
		    out.close();
			
		}
		return SUCCESS;
	}
//	用户登录
	public String loginUserAction() throws IOException{
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();  
		user.setPwd(MD5Util.getMd5String(user.getPwd()));
		String username = user.getU_name();
		String userpwd = user.getPwd();
		
		List<User> list = dao.search(
				" from User u where u.u_name='" + user.getU_name() + "' and u.pwd ='" + user.getPwd() + "'");
		int count = list.size();
		System.out.println("list_size="+count);
		System.out.println(list.toString());
		if (count >= 1) {
			System.out.println("2");
//			out.println("<script>alert('登录成功');window.location.href='index.jsp';</script>");
			return "loginSeccuss";
		}else if(count==0) {
			//没有找到
			out.println("<script>alert('用户名或密码错误');window.location.href='login.jsp';</script>");
		}

		return null;
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
	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response = response;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
	
}
