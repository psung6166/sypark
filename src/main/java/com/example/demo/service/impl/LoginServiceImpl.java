package com.example.demo.service.impl;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.UserInfoVo;
import com.example.demo.mapper.LoginMapper;
import com.example.demo.service.LoginService;


@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginMapper loginDao;

	@Override
	public String checkUserExists(LinkedHashMap<String, String> map) throws Exception{
		return loginDao.checkUserExists(map);
	}

	@Override
	public String selectUserLastLogin(LinkedHashMap<String, String> map) throws Exception{
		return loginDao.selectUserLastLogin(map);
	}

	//@Override
	//public List selectUserInfo(LinkedHashMap<String, String> map) throws Exception{
	//	return loginDao.selectUserInfo(map);
	//}
	@Override
	public HashMap<String, Object> selectUserInfo(LinkedHashMap<String, String> map) throws Exception{
		return loginDao.selectUserInfo(map);
	}
	
	@Override
	public void insertUserConnectHistory(LinkedHashMap<String, String> map) throws Exception{
		loginDao.insertUserConnectHistory(map);
	}

}
