package com.example.demo.util;

import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

public class HashMapUtil {
	
	public static HashMap<String, Object> getHashMap(HttpServletRequest request){
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		String key;
		
		Enumeration<?> e = request.getParameterNames();
		
		while(e.hasMoreElements()) {
			key = (String) e.nextElement();
			if(request.getParameterValues(key).length > 1) {
				hmap.put(key, request.getParameterValues(key));
			}else {
				hmap.put(key, request.getParameter(key));
			}
		}
		return hmap;
	}
	

}
