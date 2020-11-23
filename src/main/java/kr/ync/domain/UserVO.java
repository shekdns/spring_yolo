package kr.ync.domain;

import java.util.List;

import lombok.Data;

@Data
public class UserVO {
	
	public String id;
	public String pass;
	public String name;
	public String email;
	public List<AuthVO> auth;
}
