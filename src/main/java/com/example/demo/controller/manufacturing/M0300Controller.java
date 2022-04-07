package com.example.demo.controller.manufacturing;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.util.CsvUtils;

@Controller
public class M0300Controller {

	// local
	@Value("${local.team1path}")
	private String Team1Path;
	@Value("${local.team2path}")
	private String Team2Path;
	@Value("${local.team3path}")
	private String Team3Path;
	
	// dev
	//String Team1Path = "/home/safekorea2/workspace/data/factory/team1/team1_1/"; 
	
	/*  team 1  */
	/*
	 * 공정 분석 패키지 - 일 
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeDayChartAjax1.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeDayChartAjax1(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team1Path+"grade_day.csv";
		List resultList = CsvUtils.readCSV(path);

		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}

	/*
	 * 공정 분석 패키지 - 시간
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeHourChartAjax1.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeHourChartAjax1(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team1Path+"grade_hour.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}

	/*
	 * 공정 분석 패키지 - 주
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeWeekChartAjax1.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeWeekChartAjax1(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team1Path+"grade_weekday.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 월
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeMonthChartAjax1.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeMonthChartAjax1(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team1Path+"grade_month.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 분기
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeQuarterChartAjax1.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeQuarterChartAjax1(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team1Path+"grade_quarter.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 년
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeYearChartAjax1.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeYearChartAjax1(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team1Path+"grade_year.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}

	
	/*  team 2  */
	/*
	 * 공정 분석 패키지 - 일 
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeDayChartAjax2.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeDayChartAjax2(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team2Path+"grade_day.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 시간
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeHourChartAjax2.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeHourChartAjax2(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team2Path+"grade_hour.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 주
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeWeekChartAjax2.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeWeekChartAjax2(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team2Path+"grade_weekday.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 월
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeMonthChartAjax2.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeMonthChartAjax2(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team2Path+"grade_month.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 분기
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeQuarterChartAjax2.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeQuarterChartAjax2(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team2Path+"grade_quarter.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 년
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeYearChartAjax2.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeYearChartAjax2(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team2Path+"grade_year.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}

	
	/*  team 3  */
	/*
	 * 공정 분석 패키지 - 일 
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeDayChartAjax3.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeDayChartAjax3(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team3Path+"grade_day.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 시간
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeHourChartAjax3.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeHourChartAjax3(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team3Path+"grade_hour.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 주
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeWeekChartAjax3.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeWeekChartAjax3(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team3Path+"grade_weekday.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 월
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeMonthChartAjax3.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeMonthChartAjax3(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team3Path+"grade_month.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 분기
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeQuarterChartAjax3.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeQuarterChartAjax3(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team3Path+"grade_quarter.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	/*
	 * 공정 분석 패키지 - 년
	 * */
	@RequestMapping(value = "/manufacturing/manufacturingGradeYearChartAjax3.do", method = RequestMethod.GET)
	public @ResponseBody void manufacturingGradeYearChartAjax3(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String path = Team3Path+"grade_year.csv";
		List resultList = CsvUtils.readCSV(path);
		
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
}
