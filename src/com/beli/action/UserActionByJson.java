package com.beli.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.beli.dao.BaseDao;
import com.beli.pojo.Message;
import com.beli.pojo.User;
import com.beli.util.MD5Util;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

public class UserActionByJson extends ActionSupport implements ServletRequestAware,ServletResponseAware{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;
	private BaseDao<User> dao = new BaseDao<User>();
	private HttpServletResponse response;
	private HttpServletRequest request;
	private Map<String, Object> dataMap;
	private List<Message> list;
	
//	用户注册
	public String UserRegisterActionByJson() throws IOException{
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter(); 
		dataMap = new HashMap<String,Object>();
		String username = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		user = new User();
		System.out.println(username+"-"+pwd);
		user.setU_name(username);
		user.setPwd(MD5Util.getMd5String(pwd));
		Number num = dao.getNum("select count(*) from User u where u.u_name='" + user.getU_name() + "'");
		System.out.println("num=" + num);
		int count = num.intValue();
		Gson gson = new Gson();
		if(count < 1){
//			注册成功
			boolean flag = dao.add(user);
			if (flag) {				
				dataMap.put("code_error", "0");
				dataMap.put("statas", "success");				
				out.print(gson.toJson(dataMap));
			}			
		}else if(count == 1) {
//			注册失败
			dataMap.put("code_error", "-1");
			dataMap.put("statas", "exist");
			out.print(gson.toJson(dataMap));
		}
		return null;
	}
//	用户登录
	public String UserLoginActionByJson() throws IOException{
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter(); 
		dataMap = new HashMap<String,Object>();
		Gson gson = new Gson();
		user = new User();
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		System.out.println(name+"-"+pwd);
		user.setPwd(MD5Util.getMd5String(pwd));
		user.setU_name(name);	
			List<User> list = dao.search(
					" from User u where u.u_name='" + user.getU_name() + "' and u.pwd ='" + user.getPwd() + "'");
			int count = list.size();
			if (count >= 1) {
				System.out.println("登录成功");
				dataMap.put("code_error", 0);
				dataMap.put("statas", "success");
				dataMap.put("user", user);			
				out.print(gson.toJson(dataMap));
			} else if (count == 0) {
				System.out.println("账号不存在");
				dataMap.put("code_error", -1);
				dataMap.put("statas", "error");
				out.print(gson.toJson(dataMap));
			}
				
		return null;
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
	public List<Message> getList() {
		return list;
	}
	public void setList(List<Message> list) {
		this.list = list;
	}
}
