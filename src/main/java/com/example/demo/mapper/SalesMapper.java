package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SalesMapper {

	public List selectInstaAll() throws Exception;
	
	public List selectListDept() throws Exception;
	
	public List selectListAisle() throws Exception;
	
	public List selectListProduct() throws Exception;
	
	public List selectListUser() throws Exception;
}
