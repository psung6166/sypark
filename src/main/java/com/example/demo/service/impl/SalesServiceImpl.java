package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.ManufacturingMapper;
import com.example.demo.mapper.SalesMapper;
import com.example.demo.service.ManufacturingService;
import com.example.demo.service.SalesService;


@Service
public class SalesServiceImpl implements SalesService{
	
	@Autowired
	private SalesMapper salesDao;

	@Override
	public List selectInstaAll() throws Exception{
		return salesDao.selectInstaAll();
	}
	
	@Override
	public List selectListDept() throws Exception{
		return salesDao.selectListDept();
	}
	
	@Override
	public List selectListAisle() throws Exception{
		return salesDao.selectListAisle();
	}
	
	@Override
	public List selectListProduct() throws Exception{
		return salesDao.selectListProduct();
	}
	
	@Override
	public List selectListUser() throws Exception{
		return salesDao.selectListUser();
	}

	
}
