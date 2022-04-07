package com.example.demo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface DataMgtService {

	void insertDataMgt(Map<String, String> map) throws Exception;

	List selectFileInfo() throws Exception;
	
}
