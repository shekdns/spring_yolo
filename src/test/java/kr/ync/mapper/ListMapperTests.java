package kr.ync.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.ync.domain.ListVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" , 
	"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class ListMapperTests {

	private int[] songArr = { 29, 31, 32 ,33 ,34 };   //29
	private int[] albumArr = {49 ,2 ,3 ,22 ,23};	//49 
	
	@Autowired
	private ListMapper mapper;
	
//	@Test
//	public void testInsert() {
//
//			String id = "shekdns";
//			int song_idx = songArr[0];
//			int album_idx = albumArr[0];
//		
//			mapper.insert(id, song_idx, album_idx);
//	
//	}
	
	@Test
	public void testInsert() {
		
		ListVO list = new ListVO();
		
		list.setId("shekdns");
		list.setAlbum_idx(albumArr[0]);
		list.setSong_idx(songArr[0]);
		mapper.insert(list);
	}
	
	
	
	
}
