package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.UserVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class UserServiceTests {

	@Setter(onMethod_ = { @Autowired})
	private UserService service;
	
	@Setter(onMethod_ = { @Autowired})
	private PasswordEncoder pwencoder;
	
//	@Test
//	public void testRegister() {
//		
//		UserVO user = new UserVO();
//		user.setId("test3");
//		//user.setPass("1234");
//		user.setPass(pwencoder.encode("1234"));
//		user.setName("test");
//		user.setEmail("aa@naver.com");
//		service.user_register(user);
//		log.info("생성된 유저의 id: " + user.getId());
//	}
	
//	@Test
//	public void testPass_Update() {
//		
//		UserVO user = new UserVO();
//		user.setId("test6");
//		user.setPass("1123");
//		user.setPass(pwencoder.encode(user.getPass()));
//		service.pass_update(user);
//		log.info("새로운 유저 비밀번호: " + user.getPass());
//	}
	
}
