package com.example.demo.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GradeMapper {

	public List selectGradeYear() throws Exception;

	public List selectGradeDay() throws Exception;

	public List selectTeamLine() throws Exception;

	public List selectResultList() throws Exception;

	public HashMap<String, Object> selectGradeMonth();
}
