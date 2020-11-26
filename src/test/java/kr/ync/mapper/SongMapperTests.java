package kr.ync.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.ync.domain.Criteria;
import kr.ync.domain.SongVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" , 
	"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class SongMapperTests {
	
	private int[] songArr = {14, 16};
	private int[] artistArr = {21, 21, 1};
	private int[] albumArr = {23, 21, 1};
	
	@Setter(onMethod_ = @Autowired)
	private SongMapper mapper;
	
	//등록 
//	@Test
//	public void testInsertSelectKey() {
//		
//		SongVO song = new SongVO();
//		song.setSong_name("test1");
//		song.setAlbum_name("the album");
//		song.setArtist_name("블랙핑크");
//		song.setImg_path("이미지1");
//		song.setMp3_path("mp3_1");
//		song.setLyc_path("가사파일1");
//		song.setLyrics("작사1");
//		song.setComposition("작곡1");
//		song.setAlbum_idx(albumArr[2]);
//		song.setArtist_idx(artistArr[2]);
//		song.setGenre("댄스");
//		
//		mapper.insertSelectKey(song);
//		
//		log.info(song);
//		
//	}

//	@Test
//	public void testInsert() {
//	
//		SongVO song = new SongVO();
//		song.setSong_name("love");
//		song.setAlbum_name("the album");
//		song.setArtist_name("블랙핑크");
//		song.setImg_path("이미지1");
//		song.setMp3_path("mp3_1");
//		song.setLyc_path("가사파일1");
//		song.setLyrics("작사1");
//		song.setComposition("작곡1");
//		song.setAlbum_idx(albumArr[1]);
//		song.setArtist_idx(artistArr[1]);
//		song.setGenre("댄스");
//		mapper.insert(song);
//		log.info(song);
//	}
	
	//리스트
//	@Test
//	public void testGetList() {
//		
//		mapper.getList().forEach(song -> log.info("song 객채 내용 : " + song));
//	}

//	@Test
//	public void testGetListWithPaging() {
//		
//		Criteria cri = new Criteria();
//		
//		cri.setPageNum(1);
//		cri.setAmount(3);
//		
//		List<SongVO> list = mapper.getListWithPaging(cri);
//		
//		list.forEach(song -> log.info(song));
//		
//		
//	}
	
//	@Test
//	public void testGetTotalCount() {
//		
//		Criteria cri = new Criteria();
//		
//		int totalCnt = mapper.getTotalCount(cri);
//		
//		log.info("totalCnt = " + totalCnt);
//		
//	}
	
	//읽기
//	@Test
//	public void testRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		SongVO song = mapper.read(2);
//
//		log.info(song);
//
//	}
	
	//업데이트	
//	@Test
//	public void testUpdate() {
//
//		SongVO song = new SongVO();
//		// 실행전 존재하는 번호인지 확인할 것
//		
//		song.setSong_idx(songArr[1]);
//		song.setSong_name("살짝 설렛어");
//		song.setAlbum_name("NonStop");
//		song.setArtist_name("오마이걸");
//		song.setImg_path("이미지1");
//		song.setMp3_path("mp3_1");
//		song.setLyc_path("가사파일1");
//		song.setLyrics("작사1");
//		song.setComposition("작곡1");
//		song.setAlbum_idx(albumArr[1]);
//		song.setArtist_idx(artistArr[1]);
//		song.setGenre("댄스");
//		int count = mapper.update(song);
//		log.info("UPDATE COUNT: " + count);
//
//	}
	
//	  @Test
//	  public void testSearch() {
//
//	    Criteria cri = new Criteria();
//	    cri.setKeyword("오마이걸");
//	    cri.setType("TCW");
//
//	    List<AlbumVO> list = mapper.getListWithPaging(cri);
//
//	    list.forEach(board -> log.info(board));
//	  }
	
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete(14));
//	}
	
//	프론트 메인 리스트
//	@Test
//	public void testGetFrontMain() {
//
//		mapper.frontMain().forEach(song -> log.info("프론트 : " + song));
//	}
	
	//음악 겟 랜덤 10개
//	@Test
//	public void testGetRandom() {
//		
//		mapper.front_SongRandom().forEach(song -> log.info("랜덤 : " + song));
//	}
	
	@Test
	public void testfrontArtist_get() {
		
		mapper.frontArtist_get(47).forEach(song -> log.info("프론트 : " + song));
	}
	
	
}
