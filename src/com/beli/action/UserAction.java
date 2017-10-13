package com.beli.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.beli.dao.BaseDao;
import com.beli.pojo.Message;
import com.beli.pojo.User;
import com.beli.util.MD5Util;
import com.opensymphony.xwork2.ActionSupport;




public class UserAction extends ActionSupport implements ServletRequestAware,ServletResponseAware,SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;
	private BaseDao<User> dao = new BaseDao<User>();
	private HttpServletResponse response;
	private HttpServletRequest request;
	private Map<String, Object> session;
	private List<Message> list;

	public List<Message> getList() {
		return list;
	}
	public void setList(List<Message> list) {
		this.list = list;
	}
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
			System.out.println("注册成功");
		}else if(count==1){
			System.out.println("注册失败");
			out.println("<script>alert('用户名已存在');window.location.href='register.jsp';</script>");  
		    out.flush();  
		    out.close();
//			session.put("loginError","用户名或者密码已存在" );
//			return ERROR;
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
		if(username.equals("") || userpwd.equals("")){
			out.println("<script>alert('用户名或密码不能为空');window.location.href='index.jsp';</script>");
		}
		List<User> list = dao.search(
				" from User u where u.u_name='" + user.getU_name() + "' and u.pwd ='" + user.getPwd() + "'");
		int count = list.size();
		System.out.println("list_size="+count);
		System.out.println(list.toString());
		if (count >= 1) {
			
//			out.println("<script>alert('登录成功');window.location.href='index.jsp';</script>");
			session.put("loginUserName",username);
			list = dao.selectAll(" from Message");
			if (!list.isEmpty()) {
				System.out.println("查询成功");
				System.err.println(list.toString());	
				session.put("MessageList", list);
				return "loginSeccuss";
			}else {
				System.out.println("查询结果为空");
			}
			
		}else if(count==0) {
			//没有找到
			out.println("<script>alert('用户名不存在,请先注册');window.location.href='index.jsp';</script>");
		}

		return null;
	}
	
//	管理员的功能
//	删除用户
	public String deleteUserAction() throws IOException{	
//		获得要删除用户的ID
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		User user = dao.selectOne(User.class, id);
		boolean flag = dao.delete(user);
		if (flag) {
//			删除成功
			System.out.println("删除成功");
		}else {
//			删除失败
			System.out.println("删除失败");
		}
		return null;
	}	
//	修改用户
	public String updataUserAction(){
		return null;
	}
//	查询全部用户
	public String selectAllUserAction(){
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		List<User> list = dao.selectAll(" from User");
		System.out.println(list.toString());
		session.put("userList", list);
		return "selectAllUser";
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
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session =  session;
	}
	
}
