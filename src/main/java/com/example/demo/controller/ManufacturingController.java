package com.example.demo.controller;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import com.example.demo.util.CsvUtils;

@Controller
public class ManufacturingController {
	
	@Autowired
	private ManufacturingServiceImpl manufacturingServiceImpl;

	
	/*
	 * 기초정보 분석 패키지
	 * */
	@GetMapping("/manufacturing/view{code}.do")
	public String view(@PathVariable("code") String code,HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {

		List resultList = new ArrayList();
		List resultList2 = new ArrayList();
		List resultList3 = new ArrayList();
		List resultList4 = new ArrayList();
		
		LinkedHashMap<String, String> map = new LinkedHashMap<String,String>();
		
		switch(code) {
			case "M0301":
				resultList = manufacturingServiceImpl.selectEfficient();
				model.addAttribute("resultList", resultList);
				break;
			case "M0302":
				resultList = manufacturingServiceImpl.selectProductive();
				model.addAttribute("resultList", resultList);
				break;
			case "M0303":
				resultList = manufacturingServiceImpl.selectCapabilityOfProcess();
				model.addAttribute("resultList", resultList);
				resultList2 = manufacturingServiceImpl.selectCapabilityOfProcess2();
				model.addAttribute("resultList2", resultList2);
				resultList3 = manufacturingServiceImpl.selectCapabilityOfProcess3();
				model.addAttribute("resultList3", resultList3);
				resultList4 = manufacturingServiceImpl.selectCapabilityOfProcess4();
				model.addAttribute("resultList4", resultList4);
				break;
			case "M0304":
				resultList = manufacturingServiceImpl.selectListM0304(map);
				model.addAttribute("resultList", resultList);
				break;
		}
		
		/*
		 * if(code.equals("M0301")) { List resultList =
		 * manufacturingServiceImpl.selectEfficient(); model.addAttribute("resultList",
		 * resultList); }
		 * 
		 * if(code.equals("M0302")) { List resultList =
		 * manufacturingServiceImpl.selectProductive(); model.addAttribute("resultList",
		 * resultList); }
		 * 
		 * if(code.equals("M0303")) { List resultList =
		 * manufacturingServiceImpl.selectCapabilityOfProcess();
		 * model.addAttribute("resultList", resultList);
		 * 
		 * List resultList2 = manufacturingServiceImpl.selectCapabilityOfProcess2();
		 * model.addAttribute("resultList2", resultList2); }
		 * 
		 * if(code.equals("M0304")) { List resultList =
		 * manufacturingServiceImpl.selectCapabilityOfProcess();
		 * model.addAttribute("resultList", resultList); }
		 */
		
		return "manufacturing/view"+code;
	}

	/*
	 * 
	 * 
	 */
	@RequestMapping(value = "/manufacturing/selectListM0304.do", method = RequestMethod.POST)
	public @ResponseBody void selectListM0304(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		JSONObject resultJSON = new JSONObject();
		
		LinkedHashMap<String, String> map = new LinkedHashMap<String,String>();
		map.put("team", request.getParameter("select_team"));
		
		System.out.println(map);
		
		List resultList = new ArrayList<>();
		resultList = manufacturingServiceImpl.selectListM0304(map);
		resultJSON.put("resultList", resultList);
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}

	
	
	
}
