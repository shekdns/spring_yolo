package kr.ync.service;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.ync.domain.UserVO;
import kr.ync.mapper.UserMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper mapper;
	
	@Autowired
	private SqlSessionTemplate userSqlSession;
	
	@Autowired
	private PasswordEncoder pwencoder;
	//private JavaMailSender mailSender;
	
	//회원가입
	@Override
	public int user_register(UserVO user) {
		// TODO Auto-generated method stub
		log.info("register......." + user);
		
		user.setPass(pwencoder.encode(user.getPass()));
		return mapper.insert(user);
	}
	
	//회원읽기 로그인 시 
	@Override
	public UserVO read(String id) {
		// TODO Auto-generated method stub
		return mapper.read(id);
	}
	//회원가입 유효성 아이디 검사
	@Override
	public int userIdCheck(String id) {
		// TODO Auto-generated method stub
		
		
		mapper = userSqlSession.getMapper(UserMapper.class);

		return mapper.checkOverId(id);
	}
	//회원가입 유효성 이름 검사
	@Override
	public int userNameCheck(String name) {
		// TODO Auto-generated method stub
		mapper = userSqlSession.getMapper(UserMapper.class);
		
		return mapper.checkOverName(name);
	
	}
	//회원가입 유효성 이메일 검사
	@Override
	public int userEmailCheck(String email) {
		// TODO Auto-generated method stub
		
		mapper = userSqlSession.getMapper(UserMapper.class);
		
		return mapper.checkOverEmail(email);
	}
	//비밀번호 찾기 아이디 이메일 일치 여부 확인
	@Override
	public int find_checkPass(String id, String email) {
		// TODO Auto-generated method stub
		
		mapper = userSqlSession.getMapper(UserMapper.class);
		
		return mapper.find_checkPass(id, email);
	}
	//아이디 찾기 이름 이메일 일치 여부 확인
	@Override
	public int find_checkId(String name, String email) {
		// TODO Auto-generated method stub
		
		mapper = userSqlSession.getMapper(UserMapper.class);
		
		return mapper.find_checkId(name, email);
	}
	//로그인시 권한 체크 권한이 없다면 로그인 불가
	@Override
	public String auth_check(String id) {
		// TODO Auto-generated method stub
		
		mapper = userSqlSession.getMapper(UserMapper.class);
		
		return mapper.auth_check(id);
	}

	//비밀번호 변경 
	@Override
	public int pass_update(UserVO user) {
		// TODO Auto-generated method stub
		
		user.setPass(pwencoder.encode(user.getPass()));
		return mapper.pass_update(user);
	}

	

}

