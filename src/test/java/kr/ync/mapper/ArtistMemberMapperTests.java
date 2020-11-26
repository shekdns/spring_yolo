package kr.ync.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.ArtistMemberVO;
import kr.ync.domain.Criteria;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" , 
	"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class ArtistMemberMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ArtistMemberMapper mapper;
	
	
	private int[] artistArr = { 46, 31, 32 ,33 ,34 };
	
	//등록 
//	@Test
//	public void testInsert() {
//		
//		ArtistMemberVO avm = new ArtistMemberVO();
//		avm.setMember_name("제이홉");
//		avm.setArtist_idx(artistArr[0]);
//		avm.setImg_path("테스트");
//		avm.setGender("남자");
//		avm.setAge(25);
//		avm.setArtist_name("방탄소년단");
//		
//		mapper.insert(avm);
//		
//		log.info(avm);
//		
//	}

//	@Test
//	public void testInsertSelectKey() {
//	
//		ArtistMemberVO avm = new ArtistMemberVO();
//		avm.setMember_name("RM");
//		avm.setArtist_idx(artistArr[0]);
//		avm.setImg_path("테스트");
//		avm.setGender("남자");
//		avm.setAge(25);
//		avm.setArtist_name("방탄소년단");
//		
//		mapper.insertSelectKey(avm);
//		log.info(avm);
//	}
	
	//리스트
//	@Test
//	public void testGetList() {
//		
//		mapper.getList().forEach(artist_member -> log.info("artist_member 객채 내용 : " + artist_member));
//	}

//	@Test
//	public void testGetListWithPaging() {
//		
//		Criteria cri = new Criteria();
//		
//		cri.setPageNum(2);
//		cri.setAmount(1);
//		
//		List<ArtistMemberVO> list = mapper.getListWithPaging(cri);
//		
//		list.forEach(artist_member -> log.info(artist_member));
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
	
	@Test
	public void testfrontGetArtist_member() {
		
		mapper.front_getArtistMember(46).forEach(artist_member -> log.info("artist_member 객채 내용 : " + artist_member));
	}
}
