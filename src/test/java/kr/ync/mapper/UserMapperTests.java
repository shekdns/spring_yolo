package kr.ync.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import kr.ync.domain.UserVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class UserMapperTests {

	@Autowired
	private UserMapper mapper;
	
	@Autowired
	private PasswordEncoder pwencoder;
		
	@Test
	public void testInsert() {

			UserVO user = new UserVO();

			user.setId("test2");
			//user.setPass("1234");
			user.setPass(pwencoder.encode("1234"));
			user.setName("test");
			user.setEmail("aa@naver.com");
			mapper.insert(user);
	
	}
	
	@Test
	public void testRead() {

		UserVO user = mapper.read("shekdns");

		log.info(user);
		
		//user.getAuth().forEach(authVO -> log.info(authVO));

	}
	


}
