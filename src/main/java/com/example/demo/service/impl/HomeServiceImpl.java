package com.example.demo.service.impl;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.HomeMapper;
import com.example.demo.service.HomeService;


@Service
public class HomeServiceImpl implements HomeService{
	
	@Autowired
	private HomeMapper homeDao;

	@Override
	public void insertRegister(LinkedHashMap<String, String> map) throws Exception{
		homeDao.insertRegister(map);
	}
}
