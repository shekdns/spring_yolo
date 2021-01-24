package kr.ync.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.ync.domain.AlbumVO;
import kr.ync.domain.Criteria;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" , 
	"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class AlbumMapperTests {
	
	// 테스트 전에 해당 번호의 게시물이 존재하는지 반드시 확인할 것
	private int[] artistArr = { 41, 31, 32 ,33 ,34 };
	private int[] albumArr = {1 ,2 ,3 ,22 ,23};
	
	@Autowired
	private AlbumMapper mapper;

		//등록
	@Test
	public void testInsert() {

			AlbumVO album = new AlbumVO();

			// 아티스트의 번호
			album.setAlbum_name("THE ALBUM");
			album.setArtist_name("블랙핑크");
			album.setAlbum_img_path("테스트");
			album.setGenre("여성");
			album.setAlbum_type("댄스, 랩/힙합");
			album.setArtist_idx(artistArr[0]);
			
			mapper.insert(album);
	
	}
	
	@Test
	public void testInsertSelectKey() {
		
		AlbumVO album = new AlbumVO();

		// 아티스트의 번호
		album.setAlbum_name("THE ALBUM");
		album.setArtist_name("블랙핑크");
		album.setAlbum_img_path("테스트");
		album.setGenre("여성");
		album.setAlbum_type("댄스, 랩/힙합");
		album.setArtist_idx(artistArr[0]);
		
		mapper.insertSelectKey(album);
		
		log.info(album);
		
	}
	
	//리스트
	@Test
	public void testGetList() {
		
		mapper.getList().forEach(album -> log.info("album 객채 내용 : " + album));
	}


	
	@Test
	public void testGetTotalCount() {
		
		Criteria cri = new Criteria();
		
		int totalCnt = mapper.getTotalCount(cri);
		
		log.info("totalCnt = " + totalCnt);
		
	}
	
	//읽기
	@Test
	public void testRead() {

		// 존재하는 게시물 번호로 테스트
		AlbumVO album = mapper.read(23);

		log.info(album);

	}
	
	//업데이트	
	@Test
	public void testUpdate() {

		AlbumVO album = new AlbumVO();
		// 실행전 존재하는 번호인지 확인할 것
		
		album.setAlbum_idx(albumArr[4]);
		album.setAlbum_name("동완핑크");
		album.setArtist_idx(37);
		album.setArtist_name("오마이걸");
		album.setGenre("팝");
		album.setAlbum_img_path("없음");
		album.setAlbum_type("그룹");
		int count = mapper.update(album);
		log.info("UPDATE COUNT: " + count);

	}

	
	  @Test
	  public void testSearch() {

	    Criteria cri = new Criteria();
	    cri.setKeyword("오마이걸");
	    cri.setType("TCW");

	    List<AlbumVO> list = mapper.getListWithPaging(cri);

	    list.forEach(board -> log.info(board));
	  }
	
	@Test
	public void testDelete() {

		log.info("DELETE COUNT: " + mapper.delete(8));
	}
	
//	프론트 메인 리스트
	@Test
	public void testGetFrontMain() {

		mapper.frontAlbum().forEach(album -> log.info("프론트 : " + album));
	}
	
	@Test
	public void testGetListWithPaging() {
		
		Criteria cri = new Criteria();
		
		cri.setPageNum(1);
		cri.setAmount(3);
		
		List<AlbumVO> list = mapper.frontAlbum_getListWithPaging(cri);
		
		list.forEach(album -> log.info(album));
		
		
	}
	
	

	
}
