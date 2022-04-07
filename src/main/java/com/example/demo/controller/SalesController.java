package com.example.demo.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.json.JSONParser;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.impl.ManufacturingServiceImpl;
import com.example.demo.service.impl.SalesServiceImpl;
import com.example.demo.util.CsvUtils;

@Controller
public class SalesController {
	
	@Autowired
	private SalesServiceImpl salesServiceImpl;

	
	/*
	 * 기초정보 분석 패키지
	 * */
	@GetMapping("/sales/view{code}.do")
	public String view(@PathVariable("code") String code,HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		List resultList = new ArrayList();
		
		//if(code.equals("S0100")) {
			resultList = salesServiceImpl.selectInstaAll(); 
			model.addAttribute("resultList", resultList); 
			
			List listDept = salesServiceImpl.selectListDept();
			model.addAttribute("listDept", listDept);
			
			List listAisle = salesServiceImpl.selectListAisle();
			model.addAttribute("listAisle", listAisle);
			
			List listProduct = salesServiceImpl.selectListProduct();
			model.addAttribute("listProduct", listProduct);
			
			List listUser = salesServiceImpl.selectListUser();
			model.addAttribute("listUser", listUser);
			
		//}
			 
		return "sales/view"+code;
	}

	
}
