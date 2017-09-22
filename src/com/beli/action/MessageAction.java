package com.beli.action;

import com.beli.dao.BaseDao;
import com.beli.pojo.Message;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Message message;
	private BaseDao<Message> dao = new BaseDao<Message>();
	
//	添加信息
	public String addMessageAction(){
		message.setTime(message.getTime());
		message.setTitle(message.getTitle());
		message.setType(message.getType());
		message.setU_name(message.getU_name());
		message.setContent(message.getContent());
		System.out.println(message.toString());
		dao.add(message);
		return "addMessage";
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
	
}
