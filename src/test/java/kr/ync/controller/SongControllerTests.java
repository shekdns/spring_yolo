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

import kr.ync.service.SongService;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

//Test for Controller
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class SongControllerTests {

	@Autowired
	private WebApplicationContext ctx; // 객체를 주입받음
	
	@Autowired
	private SongService service;
	
	private MockMvc mockMvc; // 필드 선언  
	
	// @Befores는모든 test 전에 실행되는 method
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void testArtisttList() throws Exception {

		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/admin/song"))
				.andReturn()
				.getModelAndView()
				.getModelMap());
	}
	
	//페이징
	@Test
	public void testListPaging() throws Exception {
		log.info("===================================================================");
		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/admin/album")
				.param("pageNum", "2")
				.param("amount", "3"))
				.andReturn().getModelAndView().getModelMap());
		log.info("==================================================================");
	}
	
	//등록
	@Test
	public void testRegister() throws Exception {

		String resultPage = mockMvc
				.perform(MockMvcRequestBuilders.post("/admin/song_register")
				.param("song_name", "테스3")
				.param("album_idx", "1")
				.param("album_name", "the album")
				.param("artist_idx", "1")
				.param("artist_name" , "블랙핑크")
				.param("img_path", "이미지3")
				.param("mp3_path", "mp3_3")
				.param("lyc_path", "가사파일3")
				.param("lyrics", "작사1")
				.param("composition", "작곡")
				.param("genre", "댄스")
						)
				.andReturn().getModelAndView().getViewName();

		log.info("resultPage: " + resultPage);

	}
	
//	@Test
	public void tetGet() throws Exception {

		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/admin/song_get")
				.param("song_idx", "16"))
				.andReturn()
				.getModelAndView()
				.getModelMap());
	}
	
//	@Test
	public void testModify() throws Exception {

		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/admin/song_modify")
				.param("song_idx", "16")
				.param("album_name", "테스트")
				.param("artist_idx", "1")
				.param("artist_name", "테스트")
				.param("img_path" , "테스트")
				.param("genre", "테스트"))
				.andReturn()
				.getModelAndView()
				.getViewName();

		log.info(resultPage);

	}
	
//	@Test
	public void testRemove() throws Exception {
		// 삭제전 데이터베이스에 게시물 번호 확인할 것
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/admin/song_remove")
				.param("album_idx", "20"))
				.andReturn()
				.getModelAndView()
				.getViewName();

		log.info(resultPage);
	}
	
}
