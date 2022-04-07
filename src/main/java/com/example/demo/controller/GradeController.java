package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.impl.GradeServiceImpl;

@Controller
public class GradeController {
	
	@Autowired
	private GradeServiceImpl gradeServiceImpl;

	@RequestMapping(value = "/grade/selectGradeYear.do", method = RequestMethod.GET)
	public String selectGradeYear(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception{
		
		LinkedHashMap<String, Object> map = new LinkedHashMap<>();
		
		List list = gradeServiceImpl.selectGradeYear();
		
		System.out.println(list);
		
		return "chart";
	}
}
