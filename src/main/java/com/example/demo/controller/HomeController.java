package com.example.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.impl.HomeServiceImpl;

@Controller
public class HomeController {
	
	@Autowired
	private HomeServiceImpl homeServiceImpl;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {

		return "index";
	}
	
	@RequestMapping(value = "/home/main.do", method = RequestMethod.GET)
	public String main(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {

		LinkedHashMap<String, Object> map = new LinkedHashMap<>();
		
		//List list = gradeServiceImpl.selectGradeYear();
		
		/*
		 * System.out.println(list);
		 * 
		 * model.addAttribute("list", list);
		 */
		
		return "main/body/main";
	}

	//@RequestMapping(value = "/home/login.do", method = RequestMethod.GET)
	//public String login(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
	//	return "common/login";
	//}

	@RequestMapping(value = "/home/register.do", method = RequestMethod.GET)
	public String register(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		return "common/register";
	}

	@RequestMapping(value = "/home/insertRegister.do", method = RequestMethod.POST)
	public String insertRegister(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		LinkedHashMap<String, String> map = new LinkedHashMap<>();
		
		map.put("user_id", request.getParameter("user_id"));
		map.put("user_nm", request.getParameter("user_nm"));
		map.put("user_email", request.getParameter("user_email"));
		map.put("user_pw", request.getParameter("user_pw"));
		
		homeServiceImpl.insertRegister(map);
		
		response.setContentType("text/html; charset=UTF-8");
		 
		PrintWriter out = response.getWriter();
		 
		out.println("<script>alert('계정이 등록 되었습니다');</script>");
		 
		out.flush();
		
		return "common/login";
	}

	@RequestMapping(value = "/home/info.do", method = RequestMethod.GET)
	public String info(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		return "common/info";
	}

	@RequestMapping(value = "/home/board.do", method = RequestMethod.GET)
	public String board(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		return "common/board";
	}
	
}
