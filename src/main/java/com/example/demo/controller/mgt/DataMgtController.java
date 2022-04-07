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

import com.example.demo.service.impl.DataMgtServiceImpl;
import com.example.demo.service.impl.GradeServiceImpl;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class DataMgtController {

	@Autowired
	private DataMgtServiceImpl dataMgtServiceImpl;
	
	/*
	 * 환경설정 데이터관리
	 * */
	@GetMapping("/management/viewDataMgt.do")
	public String viewDataMgt(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		
		return "management/dataMgt/viewDataMgt";
	}

	/*
	 * comment : 파일업로드 처리
	 * 
	 * 
	 * */
	
	@Value("${file.download.directory}") 
	private String fileDir;
	
	/*
	 * @GetMapping("/dataUpload.do") public String newFile() { return "upload-form";
	 * }
	 */
	
	@PostMapping("/management/dataUpload.do")
	public String dataUpload(@RequestParam("file") MultipartFile file,HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// 원래 파일 이름 추출
		String origName = file.getOriginalFilename();
		
		// 파일 이름으로 쓸 uuid 생성
		String uuid = UUID.randomUUID().toString();
		
		// 확장자 추출(ex : .csv)
		String extension = origName.substring(origName.lastIndexOf("."));
		
		// uuid와 확장자 결합
		String savedName = uuid + extension;
		
		// 파일을 불러올때 사용할 파일 경로
		String savedPath = fileDir + savedName;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("file_nm_orig", origName);
		map.put("file_nm", uuid);
		map.put("file_path", savedPath);
		
		dataMgtServiceImpl.insertDataMgt(map);
		
		System.out.println("origName : " + origName);
		System.out.println("uuid : " + uuid);
		System.out.println("extension : " + extension);
		System.out.println("savedName : " + savedName);
		System.out.println("savedPath : " + savedPath);
		
		  if(!file.isEmpty()) { 
			  String downloadPath = fileDir + file.getOriginalFilename();
			  file.transferTo(new File(downloadPath)); 
		  }
		
		return "management/dataMgt/viewDataMgt";
	}
	
	/*
	 * 
	 * 
	 */
	@RequestMapping(value = "/management/dataMgt/selectFileInfo.do", method = RequestMethod.POST)
	public @ResponseBody void selectFileInfo(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		JSONObject resultJSON = new JSONObject();
		
		List resultList = new ArrayList<>();
		resultList = dataMgtServiceImpl.selectFileInfo();
		resultJSON.put("resultList", resultList);
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
	
}
