package com.example.demo.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.DataMgtMapper;
import com.example.demo.mapper.GradeMapper;
import com.example.demo.service.DataMgtService;
import com.example.demo.service.GradeService;

@Service
public class DataMgtServiceImpl implements DataMgtService{
	
	@Autowired
	private DataMgtMapper dataMgtDao;

	/*
	 * @Override public HashMap<String, Object> getGradeMonth() throws Exception{
	 * return gradeDao.selectGradeMonth(); }
	 */

	@Override
	public void insertDataMgt(Map<String, String> map) throws Exception{
		dataMgtDao.insertDataMgt(map);
	}
	
	@Override
	public List selectFileInfo() throws Exception{
		return dataMgtDao.selectFileInfo();
	}
}
