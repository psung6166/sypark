package com.example.demo.mapper;

import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HomeMapper {

	public void insertRegister(LinkedHashMap<String, String> map);
	
}
