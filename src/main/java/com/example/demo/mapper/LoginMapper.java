package com.example.demo.mapper;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.domain.UserInfoVo;

@Mapper
public interface LoginMapper {

	public String checkUserExists(LinkedHashMap<String, String> map) throws Exception;

	public String selectUserLastLogin(LinkedHashMap<String, String> map) throws Exception;

	//public List selectUserInfo(LinkedHashMap<String, String> map) throws Exception;
	public HashMap<String, Object> selectUserInfo(LinkedHashMap<String, String> map) throws Exception;
	
	public void insertUserConnectHistory(LinkedHashMap<String, String> map) throws Exception;
}
