package kr.ync.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.ync.domain.Artist_ReplyVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.ReplyVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" , 
	"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class Artist_ReplyMapperTests {

	//41은 블랙핑크
	private int[] artist_idx = {41, 42, 43 ,44};
	
	@Setter(onMethod_ = @Autowired)
	private Artist_ReplyMapper mapper;
	
//	@Test
//	public void testCreate() {
//
//			Artist_ReplyVO  reply = new Artist_ReplyVO();
//
//			reply.setReply("테스트 댓글 입니다2");
//			reply.setReplyer("shekdns");
//			reply.setArtist_idx(artist_idx[0]);
//			
//			mapper.insert(reply);
//
//
//	}
	
//	@Test
//	public void testGetList() {
//
//		Criteria cri = new Criteria();
//
//		List<Artist_ReplyVO> replies = mapper.getList(cri, artist_idx[0]);
//
//		replies.forEach(reply -> log.info(reply));
//
//	}
	
	// 테스트 전에 해당 번호의 게시물이 존재하는지 반드시 확인할 것
//	@Test
//	public void testGetListWithPaging() {
//		
//		// 1page 10개 출력
//		Criteria cri = new Criteria(2, 2);
//
//		List<Artist_ReplyVO> replies = mapper.getListWithPaging(cri, artist_idx[0]);
//
//		replies.forEach(reply -> log.info(reply));
//
//	}
	
	@Test
	public void testGetCount() {
		
		int totalCnt = mapper.getCountByBno(artist_idx[0]);
		
		log.info("totalCnt = " + totalCnt);
		
	}
	
}
