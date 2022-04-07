package com.example.demo.service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import com.example.demo.domain.UserInfoVo;

public interface LoginService {

	String checkUserExists(LinkedHashMap<String, String> map) throws Exception;

	String selectUserLastLogin(LinkedHashMap<String, String> map) throws Exception;

	//List selectUserInfo(LinkedHashMap<String, String> map) throws Exception;
	HashMap<String, Object> selectUserInfo(LinkedHashMap<String, String> map) throws Exception;
	
	void insertUserConnectHistory(LinkedHashMap<String, String> map) throws Exception;
	
}
