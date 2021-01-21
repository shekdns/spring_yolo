package kr.ync.service;

import kr.ync.domain.UserVO;

public interface UserService {
	
	public int user_register(UserVO user);
	
	public UserVO read(String id);
	
	public int userIdCheck(String id);
	
	public int userNameCheck(String name);
	
	public int userEmailCheck(String email);
	
	public int find_checkPass(String id, String email);
	
	public int find_checkId(String name, String email);
	
	public String auth_check(String id);
	
	public int pass_update(UserVO user);
	
	//public int pass_update(String pass, String id);
}

