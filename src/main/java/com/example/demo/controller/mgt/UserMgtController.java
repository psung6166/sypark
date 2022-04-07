package com.example.demo.controller.mgt;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StreamUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.domain.UserInfoVo;
import com.example.demo.service.impl.DataMgtServiceImpl;
import com.example.demo.service.impl.GradeServiceImpl;
import com.example.demo.service.impl.UserMgtServiceImpl;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class UserMgtController {

	@Autowired
	UserMgtServiceImpl userMgtServiceImpl;
	
	
	/*
	 * 환경설정 데이터관리
	 * */
	@GetMapping("/management/viewUserMgt.do")
	public String viewDataMgt(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		
		return "management/userMgt/viewUserMgt";
	}

	
	/*
	 * 
	 * 
	 */
	@RequestMapping(value = "/management/userMgt/selectUserInfo.do", method = RequestMethod.POST)
	public @ResponseBody void selectUserInfo(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		JSONObject resultJSON = new JSONObject();
		
		List resultList = new ArrayList<>();
		resultList = userMgtServiceImpl.selectUserInfo();
		resultJSON.put("resultList", resultList);
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	
}
