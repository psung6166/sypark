package com.example.demo.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.example.demo.domain.UserInfoVo;

/*
 * comment : 세션 관리를 위한 유틸 클래스
 * 작성자 : 박성윤
 * 작성일 : 2022. 04. 04.
 */
public class SessionUtil {

	public static UserInfoVo getSessionUserInfoVo(HttpServletRequest reqeust) {
		
		UserInfoVo userInfoVo = null;
		HttpSession session = reqeust.getSession(false);
		
		if(session != null && session.getAttribute("userInfoVo") != null) {
			userInfoVo = (UserInfoVo)session.getAttribute("userInfoVo");
		}
		return userInfoVo;
	}
	
}
