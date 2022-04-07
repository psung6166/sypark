package com.example.demo.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.GradeMapper;
import com.example.demo.service.GradeService;

@Service
public class GradeServiceImpl implements GradeService{
	
	@Autowired
	private GradeMapper gradeDao;
	
	@Override
	public List selectGradeYear() throws Exception{
		return gradeDao.selectGradeYear();
	}

	@Override
	public List selectGradeDay() throws Exception{
		return gradeDao.selectGradeDay();
	}

	@Override
	public List selectTeamLine() throws Exception{
		return gradeDao.selectTeamLine();
	}

	@Override
	public List selectResultList() throws Exception{
		return gradeDao.selectResultList();
	}

	@Override
	public HashMap<String, Object> getGradeMonth() throws Exception{
		return gradeDao.selectGradeMonth();
	}

}
