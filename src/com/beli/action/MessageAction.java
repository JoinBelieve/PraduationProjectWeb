package com.beli.action;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.beli.dao.BaseDao;
import com.beli.pojo.Message;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport implements SessionAware,ServletRequestAware,ServletResponseAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Message message;
	private BaseDao<Message> dao = new BaseDao<Message>();
	private Map<String, Object> session;
	private HttpServletResponse response;
	private HttpServletRequest request;
	private List<Message> list;
	
		
	
	
	
public List<Message> getList() {
		return list;
	}

	public void setList(List<Message> list) {
		this.list = list;
	}

	//	添加信息
	public String addMessageAction(){
		message.setTime(message.getTime());
		message.setTitle(message.getTitle());
		message.setType(message.getType());
		message.setU_name(message.getU_name());
		message.setContent(message.getContent());
		System.out.println(message.toString());
		boolean flag = dao.add(message);
		if (flag) {
//			添加成功
			list = dao.selectAll(" from Message");
			if (!list.isEmpty()) {
				System.out.println("查询成功");
				System.err.println(list.toString());	
				session.put("MessageList", list);
				                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
				return "loginSeccuss";
			}else {
				System.out.println("查询结果为空");
			}
			
			return "addMessage";
		}
		
		return null;
	}
//	根据id查找一个的论坛信息
	public String SelectOneMessageAction() throws IOException{
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();  
		Gson gson = new Gson();
		
		int id = message.getM_id();
		System.out.println(id);
		Message message = (Message) dao.selectOne(Message.class, id);
		if (message!=null) {
			System.out.println("查询成功");
			session.put("message", message);
		}
		return "selectOneMessage";
	}
	
	public Message getMessage() {
		return message;
	}
	public void setMessage(Message message) {
		this.message = message;
	}
	public BaseDao<Message> getDao() {
		return dao;
	}
	public void setDao(BaseDao<Message> dao) {
		this.dao = dao;
	}
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.session = arg0;
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
