package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.domain.UserInfoVo;

@Mapper
public interface UserMgtMapper {
	
	public List selectUserInfo();
	
}
