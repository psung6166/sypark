package com.example.demo.controller.sales;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.impl.SalesServiceImpl;
import com.example.demo.util.CsvUtils;

@Controller
public class S0100Controller {

	@Autowired
	private SalesServiceImpl salesServiceImpl;
	
	/*
	 *  분석 패키지 
	 * */
	@RequestMapping(value = "/sales/salesS0100ajax.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeDayChartAjax1(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		List resultList = salesServiceImpl.selectInstaAll();
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("data", resultList);
		
		System.out.println(resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}

	/*
	 *  분석 패키지 
	 * */
	@RequestMapping(value = "/sales/selectSalesS0100python.do", method = RequestMethod.GET)
	public @ResponseBody void selectSalesS0100python(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		System.out.println(request.getParameter("hour_hide"));
		
		JSONObject resultJSON = new JSONObject();
		
		// 파이썬 데이터 출력
		  String command = "C:\\Python\\Python39\\python.exe"; // 명령어 
		  String arg1 = "C:\\workspace\\FL_Solution\\src\\main\\webapp\\static\\python\\Sales_main_v0.0.py";
		  // 인자 
		  String arg2 = "{ "
		  					+ "'function':[1], "
		  					+ "'select':[0], "
		  					+ "'f_time':{ 'hour':['F'], 'date':['T'],'dayOfWeek':['F'],'month':['F'],'quarter':['F'],'date_range':['2021-01-01','2022-01-01'] }, "
		  					+ "'f_dept':{ 'dept':[1,2,3,4], 'aisle':[10,22,33],'product':[-1] } "
		  					+ "'f_customer':{'user_id':[-2]} }"
		  				+ "}";
		  String function = "[1]";
		  ProcessBuilder builder = new ProcessBuilder(command, arg1,arg2,function); 
		  Process process = builder.start();
		  int exitVal = process.waitFor(); // 자식 프로세스가 종료될 때까지 기다림 
		  BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream(), "euc-kr")); // 서브 프로세스가 출력하는 내용을 받기 위해 
		  String line; 
		  while ((line =br.readLine()) != null) { 
			  System.out.println(">>>  " + line); // 표준출력에 쓴다
			  JSONObject jsonVar = new JSONObject(line); 
			  resultJSON.put("data", jsonVar); 
		  }
		  
		  if(exitVal != 0) { // 비정상 종료 
			  System.out.println("서브 프로세스가 비정상 종료되었다."); 
		  }
		 
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}

}
