package kr.ync.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.ArtistVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.TestVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" , 
	"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class ArtistMapperTests {
	
	
	
	@Setter(onMethod_ = @Autowired)
	private ArtistMapper mapper;
	
	//등록 
//	@Test
//	public void testInsertSelectKey() {
//		
//		ArtistVO av = new ArtistVO();
//		av.setArtist_name("소녀시대");
//		av.setDebut("2017");
//		av.setGender("여자");
//		av.setArtist_type("그룹");
//		av.setImg_path("테스트");
//		
//		mapper.insertSelectKey(av);
//		
//		log.info(av);
//		
//	}

//	@Test
//	public void testInsert() {
//	
//		ArtistVO av = new ArtistVO();
//		av.setArtist_name("bb");
//		av.setDebut("bb");
//		av.setArtist_type("bb");
//		av.setGender("aa");
//		av.setImg_path("a");
//		mapper.insert(av);
//		log.info(av);
//	}
	
	//리스트
//	@Test
//	public void testGetList() {
//		
//		mapper.getList().forEach(artist -> log.info("artist 객채 내용 : " + artist));
//	}

//	@Test
//	public void testGetListWithPaging() {
//		
//		Criteria cri = new Criteria();
//		
//		cri.setPageNum(3);
//		cri.setAmount(5);
//		
//		List<ArtistVO> list = mapper.getListWithPaging(cri);
//		
//		list.forEach(chart -> log.info(chart));
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
//		ArtistVO artist = mapper.read(37);
//
//		log.info(artist);
//
//	}
	
	//업데이트	
//	@Test
//	public void testUpdate() {
//
//		ArtistVO artist = new ArtistVO();
//		// 실행전 존재하는 번호인지 확인할 것
//		
//		artist.setArtist_idx(41);
//		artist.setArtist_name("와이유");
//		artist.setDebut("2009년");
//		artist.setGender("남자");
//		artist.setArtist_type("ㅅㅅㅅ");
//		artist.setImg_path("일단");
//		int count = mapper.update(artist);
//		log.info("UPDATE COUNT: " + count);
//
//	}

	
//	  @Test
//	  public void testSearch() {
//
//	    Criteria cri = new Criteria();
//	    cri.setKeyword("블랙핑크");
//	    cri.setType("TCW");
//
//	    List<ArtistVO> list = mapper.getListWithPaging(cri);
//
//	    list.forEach(board -> log.info(board));
//	  }
	
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete(39));
//	}
	
//	@Test
//	public void frontArtistGetTest() {
//		//47 볼빨간 사춘기
//		List<ArtistVO> list = mapper.frontArtist_get(47);
//		list.forEach(artist -> log.info(artist));
//	}

	@Test
	public void frontArtistMemberGetTest() {
		//46 방탄소년단
		List<ArtistVO> list = mapper.frontArtist_get_member(46);
		list.forEach(artist -> log.info(artist));
		
	}

}
