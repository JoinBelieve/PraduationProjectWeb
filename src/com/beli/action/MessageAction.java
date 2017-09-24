package com.beli.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.beli.dao.BaseDao;
import com.beli.pojo.Message;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Message message;
	private BaseDao<Message> dao = new BaseDao<Message>();
	private Map<String, Object> session;
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
	public String SelectOneMessageAction(){
		System.out.println("尽量了");
		int id = message.getM_id();
		System.out.println(id);
			Message message = (Message) dao.selectOne(Message.class, id);
			System.out.println(message);
		
	
		return null;
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
	
}
