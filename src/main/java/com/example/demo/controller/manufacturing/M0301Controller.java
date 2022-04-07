package com.example.demo.controller.manufacturing;

import java.io.IOException;
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

import com.example.demo.service.impl.ManufacturingServiceImpl;
import com.example.demo.util.CsvUtils;

@Controller
public class M0301Controller {

	// local
	@Value("${local.superpath}")
	private String SuperPath;
	
	@Autowired
	private ManufacturingServiceImpl serviceImpl;
	
	@RequestMapping(value = "/manufacturing/selectViewEfficientRank.do", method = RequestMethod.GET)
	public @ResponseBody void efficientRank(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception{
		
		List resultList = serviceImpl.selectEfficient();
		
		/*
		 * String path = SuperPath+"diff_EFFICIENT_RANK.csv"; 
		 * List resultList = CsvUtils.readCSV(path);
		 */
 
		JSONObject resultJSON = new JSONObject();
		resultJSON.put("resultList", resultList);
		
		model.addAttribute("resultList", resultList);
		
		response.setContentType("text/json; charset=utf-8");
		try {
			response.getWriter().write(resultJSON.toString());
		} catch (IOException e) {
			//log.error(null);
		}
	}
	
}
