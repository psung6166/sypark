package com.example.demo.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.domain.UserInfoVo;
import com.example.demo.service.impl.LoginServiceImpl;
import com.example.demo.util.HashMapUtil;
import com.example.demo.util.SessionUtil;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class LoginController {

	@Autowired
	private LoginServiceImpl loginServiceImpl;
	
	static final Logger log = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value = "/home/viewLogin.do", method = RequestMethod.GET)
	public String viewLogin(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {

		return "common/login";
	}
	
	@RequestMapping(value = "/home/login.do")
	public String login(UserInfoVo userVo, HttpServletRequest request, HttpServletResponse response, ModelMap model, RedirectAttributes rttr, HttpSession session) throws Exception {
		
		UserInfoVo ssUserInfoVo = SessionUtil.getSessionUserInfoVo(request);
		
		HashMap<String, Object> param = HashMapUtil.getHashMap(request);
		
		//세션이 존재하면 바로 메인페이지로 이동함.
		if(ssUserInfoVo != null && ssUserInfoVo.getUserNm() != null && !ssUserInfoVo.getUserId().equals("")) {
			//System.out.println("ssUserInfoVo:"+ssUserInfoVo);
			return "common/board";
		}

		//쿠키
		
		//1. 사용자 존재 여부 확인
		LinkedHashMap<String, String> map = new LinkedHashMap<String,String>();
		map.put("user_id", request.getParameter("user_id"));
		map.put("user_pw", request.getParameter("user_pw"));
		
		String result = loginServiceImpl.checkUserExists(map);
		// 회원정보가 존재하지 않을때
		if(result == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('존재하지 않는 계정이거나 아이디또는 비밀번호를 다시 확인해주세요.');</script>");
			out.flush();
			return "index";
		}
			
		//마지막 로그인정보 가져오기
		String lastLogin = loginServiceImpl.selectUserLastLogin(map);
		model.addAttribute("lastLogin", lastLogin);
			
		//2. 사용자 정보 조회
		HashMap<String, Object> resultMap = loginServiceImpl.selectUserInfo(map);
		UserInfoVo userInfoVo = new UserInfoVo();
		if(resultMap != null) {
			userInfoVo.setUserId(resultMap.get("USER_ID").toString());
			userInfoVo.setUserNm(resultMap.get("USER_NM").toString());
			userInfoVo.setUserNo(resultMap.get("USER_SQ").toString());
			
			param.put("user_nm", userInfoVo.getUserNm());
		
			//2-1. 회원정보 존재시 접속기록 남기기
			//IP 확인
			String ip = request.getHeader("X-Forwarded-For");
			log.info("X-FORWARDED-FOR : " + ip);
			
			if (ip == null) {
				ip = request.getHeader("Proxy-Client-IP");
				log.info("Proxy-Client-IP : " + ip);
			}
			if (ip == null) {
				ip = request.getHeader("WL-Proxy-Client-IP");
				log.info("WL-Proxy-Client-IP : " + ip);
			}
			if (ip == null) {
				ip = request.getHeader("HTTP_CLIENT_IP");
				log.info("HTTP_CLIENT_IP : " + ip);
			}
			if (ip == null) {
				ip = request.getHeader("HTTP_X_FORWARDED_FOR");
				log.info("HTTP_X_FORWARDED_FOR : " + ip);
			}
			if (ip == null) {
				ip = request.getRemoteAddr();
				log.info("getRemoteAddr : "+ip);
			}
			log.info("Result : IP Address : "+ip);
			userInfoVo.setUserIp(ip);
			
			map.put("user_ip", ip);
			loginServiceImpl.insertUserConnectHistory(map);
			
			// 에이전트
			String agent = request.getHeader("User-Agent");
			// 브라우져 구분
			String brower = null;
			if (agent != null) {
				if (agent.indexOf("Trident") > -1) {
					brower = "MSIE";
				} else if (agent.indexOf("Chrome") > -1) {
					brower = "Chrome";
				} else if (agent.indexOf("Opera") > -1) {
					brower = "Opera";
				} else if (agent.indexOf("iPhone") > -1 && agent.indexOf("Mobile") > -1) {
					brower = "iPhone";
				} else if (agent.indexOf("Android") > -1 && agent.indexOf("Mobile") > -1) {
					brower = "Android";
				}
			}
			userInfoVo.setUserBr(brower);
			
			String os = null;
			if(agent.indexOf("NT 6.0") != -1) os = "Windows Vista/Server 2008";
			else if(agent.indexOf("NT 5.2") != -1) os = "Windows Server 2003";
			else if(agent.indexOf("NT 5.1") != -1) os = "Windows XP";
			else if(agent.indexOf("NT 5.0") != -1) os = "Windows 2000";
			else if(agent.indexOf("NT") != -1) os = "Windows NT";
			else if(agent.indexOf("9x 4.90") != -1) os = "Windows Me";
			else if(agent.indexOf("98") != -1) os = "Windows 98";
			else if(agent.indexOf("95") != -1) os = "Windows 95";
			else if(agent.indexOf("Win16") != -1) os = "Windows 3.x";
			else if(agent.indexOf("Windows") != -1) os = "Windows";
			else if(agent.indexOf("Linux") != -1) os = "Linux";
			else if(agent.indexOf("Macintosh") != -1) os = "Macintosh";
			else os = ""; 
			userInfoVo.setUserOs(os);
			
			//[모바일 or PC 구별하기]
			String filter = "iphone|ipod|android|windows ce|blackberry|symbian|windows phone|webos|opera mini|opera mobi|polaris|iemobile|lgtelecom|nokia|sonyericsson|lg|samsung";
			String filters[] = filter.split("\\|");
			String webType = "";
			
			for(String tmp : filters){
				if ( request.getHeader("User-Agent").toLowerCase().indexOf(tmp) != -1) {
					webType = "MOBILE";
					break;
				} else {
					webType = "PC";
				}
			}
			userInfoVo.setUserTy(webType);
			
		  request.getSession().setAttribute("userInfoVo", userInfoVo);
		  request.getSession().setMaxInactiveInterval(60 * 60);
		  return "common/board";
		}else {
			return "index";
		}
	}
	
	@RequestMapping(value = "/home/logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {

		request.getSession().invalidate(); //세션 초기화
		
		
		return "common/login";
	}
}
