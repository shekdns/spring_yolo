package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.ArtistVO;
import kr.ync.domain.Criteria;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ArtistServiceTests {
	
	@Setter(onMethod_ = { @Autowired})
	private ArtistService service;
	
	//아티스트 전체 테스트 코드
	
	// 들고오기 
	@Test
	public void testGetArtistList() {
		
		service.getList().forEach(artist -> log.info(artist));
		
	}
	
	//아티스트 리스트 페이징
	@Test
	public void testArtistGetListPaging() {
		
		service.getListWithPaging(new Criteria(2, 5)).forEach(chart -> log.info(chart));
		
	}
	
	
	@Test
	public void testArtistGetTotal() {
		
		Criteria cri = new Criteria();
		
		log.info("total Cnt = " + service.getTotal(cri));
		
	}
	
	@Test
	public void testRegister() {

		ArtistVO artist = new ArtistVO();
		artist.setArtist_name("오마이걸");
		artist.setDebut("2015년");
		artist.setGender("여자");
		artist.setArtist_img_path("테스트");
		artist.setArtist_type("그룹");
		service.artist_register(artist);

		log.info("생성된 게시물의 번호: " + artist.getArtist_idx());
	}

	@Test
	public void testGet() {

		log.info(service.get(37));
	}
	
	@Test
	public void testUpdate() {

		ArtistVO artist = service.get(39);

		if (artist == null) {
			return;
		}

		artist.setArtist_name("아이유유");
		log.info("MODIFY RESULT: " + service.artist_modify(artist));
	}
	
	@Test
	public void testDelete() {

		// 게시물 번호의 존재 여부를 확인하고 테스트할 것
		log.info("REMOVE RESULT: " + service.artist_remove(36));

	}
	
}
