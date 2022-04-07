package com.example.demo.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DataMgtMapper {

	//public HashMap<String, Object> selectGradeMonth();
	
	public void insertDataMgt(Map<String, String> map);
	
	public List selectFileInfo();
}
