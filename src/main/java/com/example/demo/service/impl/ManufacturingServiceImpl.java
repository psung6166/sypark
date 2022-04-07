package com.example.demo.service.impl;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.ManufacturingMapper;
import com.example.demo.service.ManufacturingService;


@Service
public class ManufacturingServiceImpl implements ManufacturingService{
	
	@Autowired
	private ManufacturingMapper manufacturingDao;

	@Override
	public List selectEfficient() throws Exception{
		return manufacturingDao.selectEfficient();
	}

	@Override
	public List selectProductive() throws Exception{
		return manufacturingDao.selectProductive();
	}

	@Override
	public List selectCapabilityOfProcess() throws Exception{
		return manufacturingDao.selectCapabilityOfProcess();
	}

	@Override
	public List selectCapabilityOfProcess2() throws Exception{
		return manufacturingDao.selectCapabilityOfProcess2();
	}

	@Override
	public List selectCapabilityOfProcess3() throws Exception{
		return manufacturingDao.selectCapabilityOfProcess3();
	}
	
	@Override
	public List selectCapabilityOfProcess4() throws Exception{
		return manufacturingDao.selectCapabilityOfProcess4();
	}
	
	@Override
	public List selectListM0304(LinkedHashMap<String, String> map) throws Exception{
		return manufacturingDao.selectListM0304(map);
	}
	
}
