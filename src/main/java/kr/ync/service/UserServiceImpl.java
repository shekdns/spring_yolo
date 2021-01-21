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

	@Override
	public int user_register(UserVO user) {
		// TODO Auto-generated method stub
		log.info("register......." + user);
		
		user.setPass(pwencoder.encode(user.getPass()));
		return mapper.insert(user);
	}

	@Override
	public UserVO read(String id) {
		// TODO Auto-generated method stub
		return mapper.read(id);
	}

	@Override
	public int userIdCheck(String id) {
		// TODO Auto-generated method stub
		
		
		mapper = userSqlSession.getMapper(UserMapper.class);

		return mapper.checkOverId(id);
	}

	@Override
	public int userNameCheck(String name) {
		// TODO Auto-generated method stub
		mapper = userSqlSession.getMapper(UserMapper.class);
		
		return mapper.checkOverName(name);
	
	}

	@Override
	public int userEmailCheck(String email) {
		// TODO Auto-generated method stub
		
		mapper = userSqlSession.getMapper(UserMapper.class);
		
		return mapper.checkOverEmail(email);
	}

	@Override
	public int find_checkPass(String id, String email) {
		// TODO Auto-generated method stub
		
		mapper = userSqlSession.getMapper(UserMapper.class);
		
		return mapper.find_checkPass(id, email);
	}

	@Override
	public int find_checkId(String name, String email) {
		// TODO Auto-generated method stub
		
		mapper = userSqlSession.getMapper(UserMapper.class);
		
		return mapper.find_checkId(name, email);
	}

	@Override
	public String auth_check(String id) {
		// TODO Auto-generated method stub
		
		mapper = userSqlSession.getMapper(UserMapper.class);
		
		return mapper.auth_check(id);
	}

//	@Override
//	public int pass_update(String pass, String id) {
//		// TODO Auto-generated method stub
//		
//		String new_pass = pwencoder.encode(pass); 
//		
//		return mapper.pass_update(new_pass, id);
//	}

	@Override
	public int pass_update(UserVO user) {
		// TODO Auto-generated method stub
		
		user.setPass(pwencoder.encode(user.getPass()));
		return mapper.pass_update(user);
	}

	

}

