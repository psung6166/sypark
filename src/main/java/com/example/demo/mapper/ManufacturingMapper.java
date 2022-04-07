package com.example.demo.mapper;

import java.util.LinkedHashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ManufacturingMapper {

	public List selectEfficient() throws Exception;

	public List selectProductive() throws Exception;

	public List selectCapabilityOfProcess() throws Exception;

	public List selectCapabilityOfProcess2() throws Exception;

	public List selectCapabilityOfProcess3() throws Exception;
	
	public List selectCapabilityOfProcess4() throws Exception;

	public List selectListM0304(LinkedHashMap<String, String> map) throws Exception;
	
}
