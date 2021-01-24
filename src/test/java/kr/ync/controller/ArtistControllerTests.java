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

import kr.ync.service.ArtistService;
import kr.ync.service.ChartService;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

//Test for Controller
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class ArtistControllerTests {


	@Autowired
	private WebApplicationContext ctx; // 객체를 주입받음
	
	@Autowired
	private ArtistService service;
	
	private MockMvc mockMvc; // 필드 선언  
	
	// @Befores는모든 test 전에 실행되는 method
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	//리스트
	@Test
	public void testArtisttList() throws Exception {

		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/admin/artist"))
				.andReturn()
				.getModelAndView()
				.getModelMap());
	}
	
	//페이징
	@Test
	public void testListPaging() throws Exception {
		log.info("===================================================================");
		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/admin/artist")
				.param("pageNum", "2")
				.param("amount", "10"))
				.andReturn().getModelAndView().getModelMap());
		log.info("==================================================================");
	}
	
	//등록
	@Test
	public void testRegister() throws Exception {

		String resultPage = mockMvc
				.perform(MockMvcRequestBuilders.post("/admin/artist_register")
				.param("artist_name", "테스트 새글 제목")
				.param("debut", "테스트 새글 내용")
				.param("type", "user00"))
				.andReturn().getModelAndView().getViewName();

		log.info("resultPage: " + resultPage);

	}
	

	@Test
	public void tetGet() throws Exception {

		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/admin/artist_get")
				.param("idx", "37"))
				.andReturn()
				.getModelAndView()
				.getModelMap());
	}
	
	@Test
	public void testModify() throws Exception {

		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/admin/artist_modify")
				.param("artist_idx", "35")
				.param("artist_name", "수정된 테스트 새글 제목")
				.param("artist_type", "수정된 테스트 새글 내용")
				.param("gender", "user00"))
				.andReturn()
				.getModelAndView()
				.getViewName();

		log.info(resultPage);

	}

	
	@Test
	public void testRemove() throws Exception {
		// 삭제전 데이터베이스에 게시물 번호 확인할 것
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/admin/artist_remove")
				.param("artist_idx", "22"))
				.andReturn()
				.getModelAndView()
				.getViewName();

		log.info(resultPage);
	}
	


}
