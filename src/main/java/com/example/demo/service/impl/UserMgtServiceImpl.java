package com.example.demo.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.UserMgtMapper;
import com.example.demo.service.UserMgtService;

@Service
public class UserMgtServiceImpl implements UserMgtService {
	
	@Autowired
	private UserMgtMapper userMgtDao;
	
	@Override
	public List selectUserInfo() throws Exception{
		return userMgtDao.selectUserInfo();
	}

}
