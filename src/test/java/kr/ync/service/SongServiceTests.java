package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.Criteria;
import kr.ync.domain.SongVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" , 
	"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class SongServiceTests {

	private int[] artistArr = {21, 22};
	private int[] albumArr = {23, 22};
	
	@Setter(onMethod_ = { @Autowired})
	private SongService service;
	
	@Test
	public void testRegister() {
		
		SongVO song = new SongVO();
		song.setSong_name("테스트 곡3");
		song.setAlbum_name("the album");
		song.setArtist_name("블랙핑크");
		song.setSong_img_path("이미지1");
		song.setMp3_path("mp3_1");
		song.setLyc_path("가사파일1");
		song.setLyrics("작사1");
		song.setComposition("작곡1");
		song.setAlbum_idx(albumArr[1]);
		song.setArtist_idx(artistArr[1]);
		song.setGenre("댄스");
		service.song_register(song);
		
		log.info("생성된 게시물의 번호: " + song.getSong_idx());
	}
	
	@Test
	public void testGetSongList() {
		
		service.getList().forEach(song -> log.info(song));
		
	}
	
	//음악 리스트 페이징
	@Test
	public void testSongGetListPaging() {
		
		service.getListWithPaging(new Criteria(2, 2)).forEach(song -> log.info(song));
		
	}

	
	@Test
	public void testAlbumGetTotal() {
		
		Criteria cri = new Criteria();
		
		log.info("total Cnt = " + service.getTotal(cri));
		
	}
	
	@Test
	public void testGet() {

		log.info(service.get(2));
	}

	@Test
	public void testUpdate() {

		SongVO song = service.get(16);

		if (song == null) {
			return;
		}

		song.setSong_name("새볔");
		log.info("MODIFY RESULT: " + service.song_modify(song));
	}
	
	@Test
	public void testDelete() {

		// 게시물 번호의 존재 여부를 확인하고 테스트할 것
		log.info("REMOVE RESULT: " + service.song_remove(16));

	}
	
	@Test
	public void testGetFrontMainList() {
		
		service.frontMain().forEach(song -> log.info(song));
		
	}
	
}
