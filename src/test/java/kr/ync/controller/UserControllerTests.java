package kr.ync.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import kr.ync.service.UserService;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

//Test for Controller
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" , 
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class UserControllerTests {
	
	@Autowired
	private WebApplicationContext ctx; // 객체를 주입받음
	
	@Autowired
	private UserService service;
	
	@Autowired
	private PasswordEncoder pwencoder;
	
	private MockMvc mockMvc; // 필드 선언  
	
	// @Befores는모든 test 전에 실행되는 method
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	
//	@Test
//	public void testRegister() throws Exception {
//
//		String resultPage = mockMvc
//				.perform(MockMvcRequestBuilders.post("/front/sign_in")
//				.param("id", "test5")
//				.param("pass", "pwencoder.encode(test5)")
//				.param("name", "테스트")
//				.param("eamil" , "aa@naver.com"))
//				.andReturn().getModelAndView().getViewName();
//
//		log.info("resultPage: " + resultPage);
//
//	}
	
	
}
