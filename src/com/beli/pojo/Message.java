package com.beli.pojo;

import java.io.Serializable;

public class Message implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int m_id;
	private String title;
	private String type;
	private String content;
	private String time;
	private String u_name;
	
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	@Override
	public String toString() {
		return "Message [m_id=" + m_id + ", title=" + title + ", type=" + type + ", content=" + content + ", time="
				+ time + ", u_name=" + u_name + "]";
	}
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
