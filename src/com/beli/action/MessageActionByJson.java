package com.beli.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.beli.dao.BaseDao;
import com.beli.pojo.Message;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

public class MessageActionByJson extends ActionSupport implements ServletResponseAware,ServletRequestAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BaseDao<Message> dao = new BaseDao<Message>();	
	private HttpServletRequest request;
	private HttpServletResponse response;
	private Map<String, Object> dataMap = new HashMap<String,Object>();
	private Gson gson = new Gson();
	
//	添加论坛信息
	public String addMessageActionByJson() throws IOException{
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();  
		String title =request.getParameter("title");
		String content = request.getParameter("content");
		String type = request.getParameter("type");
		String time = request.getParameter("time");
		String uName = request.getParameter("uName");
		System.out.println(title+"/"+content+"/"+type+"/"+time+"/"+uName);
		Message m = new Message();
		m.setTitle(title);
		m.setContent(content);
		m.setTime(time);
		m.setType(type);
		m.setU_name(uName);
		System.out.println(m.toString());
		boolean flag = dao.add(m);
		if (flag) {
//			添加成功
			dataMap.put("code_error", "0");
			dataMap.put("status", "success");
			out.print(gson.toJson(dataMap));
		}else{
			dataMap.put("code_error", "-1");
			dataMap.put("status", "error");
			out.print(gson.toJson(dataMap));
		}
		out.flush();
		out.close();
		return null;
	}
//	查询全部论坛信息
	public String selectAllMessageActionByJson() throws IOException{
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter(); 
		
		List<Message> list = dao.selectAll(" from Message");
		System.out.println(list.toString());
		if (!list.isEmpty()) {
//			查询成功
			System.out.println("查询成功");
			dataMap.put("code_error", "0");
			dataMap.put("status", "success");
			dataMap.put("messages", list);
			out.print(gson.toJson(dataMap));
		}else {
//			查询没有结果
			System.out.println("没有查询结果");
			dataMap.put("code_error", "-1");
			dataMap.put("status", "error");		
			out.print(gson.toJson(dataMap));
		}
		out.flush();
		out.close();
		return null;
	}
	public String selectOneMessageActionByJson() throws IOException{
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter(); 
		int id = Integer.parseInt(request.getParameter("id"));
		Message message = dao.selectOne(Message.class, id);
		System.out.println(message.toString());
		if (message!=null) {
//			查询成功
			dataMap.put("code_error", "0");
			dataMap.put("status", "success");
			dataMap.put("message", message);
			out.print(gson.toJson(dataMap));
		}
		
		out.flush();
		out.close();
		return null;
	}
	
	public BaseDao<Message> getDao() {
		return dao;
	}
	public void setDao(BaseDao<Message> dao) {
		this.dao = dao;
	}
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response = response;
	}
	

}
