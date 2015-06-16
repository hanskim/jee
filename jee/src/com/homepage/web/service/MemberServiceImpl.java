package com.homepage.web.service;

import java.util.HashMap;
import java.util.Map;

import com.homepage.web.beans.MemberBean;


public class MemberServiceImpl implements MemberService{

	MemberBean bean = new MemberBean();
	Map<String,Object> map = new HashMap<String,Object>();
	
	@Override
	public void join(String id, String password, String name, int age,
			String addr) {
	
		bean.setAddr(addr);
		bean.setAge(age);
		bean.setId(id);
		bean.setName(name);
		bean.setPassword(password);

		map.put("id", bean.getId());
		map.put("password", bean.getPassword());
		map.put("name", bean.getName());
		map.put("age", String.valueOf(bean.getAge()));
		map.put("addr", bean.getAddr());
	
		
	}

	@Override
	public String login(String id, String password) {

		String msg = "" ; 
		System.out.println("tbebsbtb"+id);
		
		System.out.println("id"+map.get("id"));
		if(!map.containsValue("id")||map.get("id").equals(id)){
			msg = "일치하는 아이디 없음.";
		}else {
			if(!(map.get("password").equals(password))){
				msg = "비번 오류";
		}else{
			msg = "환영";
		}
		}
		
		return msg ; 
			
	}
	}

