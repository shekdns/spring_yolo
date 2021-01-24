package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.AlbumVO;
import kr.ync.domain.Criteria;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AlbumServiceTests {

	@Setter(onMethod_ = { @Autowired})
	private AlbumService album_service;
	
	@Setter(onMethod_ = { @Autowired})
	private ArtistService artist_service;
	
	// 테스트 전에 해당 번호의 게시물이 존재하는지 반드시 확인할 것
	private int[] artistArr = { 41, 31, 32 ,33 ,34 };
	
	@Test
	public void testRegister() {
		
		AlbumVO album = new AlbumVO();
		album.setAlbum_name("Dynamite");
		album.setArtist_name("방탄소년단");
		album.setAlbum_img_path("테스트");
		album.setGenre("남성");
		album.setAlbum_type("댄스");
		album.setArtist_idx(artistArr[0]);
		album_service.album_register(album);
		
			
		log.info("생성된 게시물의 번호: " + album.getAlbum_idx());
	}
	
	@Test
	public void testGetAlbumList() {
		
		album_service.getList().forEach(album -> log.info(album));
		
	}
	
	//아티스트 리스트 페이징
	@Test
	public void testAlbumGetListPaging() {
		
		album_service.getListWithPaging(new Criteria(2, 3)).forEach(album -> log.info(album));
		
	}

	
	@Test
	public void testAlbumGetTotal() {
		
		Criteria cri = new Criteria();
		
		log.info("total Cnt = " + album_service.getTotal(cri));
		
	}
	
	@Test
	public void testGet() {

		log.info(album_service.get(23));
	}
	
	@Test
	public void testUpdate() {

		AlbumVO album = album_service.get(23);

		if (album == null) {
			return;
		}

		album.setAlbum_name("테스트");;
		log.info("MODIFY RESULT: " + album_service.album_modify(album));
	}
	
	@Test
	public void testDelete() {

		
		log.info("REMOVE RESULT: " + album_service.album_remove(2));

	}
	
	
	
}
