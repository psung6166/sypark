package com.example.demo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface GradeService {

	public List selectGradeYear() throws Exception;

	public List selectGradeDay() throws Exception;

	public List selectTeamLine() throws Exception;

	public List selectResultList() throws Exception;

	public HashMap<String, Object> getGradeMonth() throws Exception;
}
