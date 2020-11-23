package kr.ync.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import kr.ync.service.ChartService;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

//Test for Controller
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class ChartControllerTests {

	@Autowired
	private WebApplicationContext ctx; // 객체를 주입받음
	
	@Autowired
	private ChartService service;
	
	private MockMvc mockMvc; // 필드 선언  
	
	// @Befores는모든 test 전에 실행되는 method
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	
	
//	@Test
//	public void testChartList() throws Exception {
//
//		log.info(
//				mockMvc.perform(MockMvcRequestBuilders.get("/admin/chart"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}
	
	//어드민 권한 주석 하고 싫행  
//	@Test
//	public void testListPaging() throws Exception {
//		log.info("===================================================================");
//		log.info(mockMvc.perform(
//				MockMvcRequestBuilders.get("/admin/chart")
//				.param("pageNum", "2")
//				.param("amount", "10"))
//				.andReturn().getModelAndView().getModelMap());
//		log.info("==================================================================");
//	}
	
	
//	@Test
//	public void testUpdateDB() throws Exception {
//		
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.get("/admin/update"))
//				.andReturn().getModelAndView().getViewName();
//			log.info(resultPage);
//				
//	}

	
	//
//	@Test
//	public void testClearDB() throws Exception {
//		
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.get("/admin/clear"))
//				.andReturn().getModelAndView().getViewName();
//			log.info(resultPage);
//		
//	}
//	
	
//	@Test
//	public void testUploadDB() throws Exception {
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.get("/admin/upload"))
//				.andReturn().getModelAndView().getViewName();
//			log.info(resultPage);
//		
//	}
	
}
