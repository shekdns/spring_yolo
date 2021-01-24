package kr.ync.mapper;

import kr.ync.domain.UserVO;

// 유저(회원) Mapper
public interface UserMapper {
	
	public int insert(UserVO user);

	public UserVO read(String id);
	
	//아이디 중복 체크
	public int checkOverId(String id);
	
	//이름 중복 체크
	public int checkOverName(String name);
	
	//이메일 
	public int checkOverEmail(String email);
	
	public int pass_update(UserVO user);
	
	//public int pass_update(String pass, String id);
	
	//이메일 인증 키 생성
	public int getKey(String id, String user_key);
	//이메일 인증기 체인지
	public int alter_userKey(String id, String user_key);
	
	public String searchId(String name, String email);
	
	public int find_checkId(String name, String email);
	
	public int searchPassword(String id, String email, String pass);
	
	public int find_checkPass(String id, String email);
	
	public UserVO pw_userInfo(String id);
	
	public UserVO id_userInfo(String name);
	
	//로그인 auth 체크
	public String auth_check(String id);
	
	
}
