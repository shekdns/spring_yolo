package kr.ync.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.ChartVO;
import kr.ync.domain.Criteria;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" , 
	"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class ChartMapperTests {

	
	@Setter(onMethod_ = @Autowired)
	private ChartMapper mapper;
	
	
	
	// 차트 업로드 테스트 코드 
	@Test
	public void testUploadChart() {
		
		ChartVO chart = new ChartVO();
		
		chart.setC_rank(1);
		chart.setAlbum("2집");
		chart.setArtist("아이유");
		chart.setImg_path("경로");
		chart.setName("좋은날");
		
		mapper.uploadDB(chart);
		
		log.info(chart);
		
	}
	
	// 차트 업데이트 테스트 코드
	@Test
	public void testUpdateChart() {
		
		ChartVO chart = new ChartVO();
		
		chart.setC_rank(20);
		chart.setName("테스트");
		chart.setArtist("테스트");
		chart.setAlbum("테스트");
		chart.setImg_path("테스트");
		
		mapper.updateDB(chart);
		
		log.info(chart);
		
	}
	
	// 차트 초기화 테스트 코드 
	@Test
	public void testClearChart() {
		
		mapper.clearDB();
		log.info("삭제완료.....");
	}

	@Test
	public void testGetList() {
		
		mapper.getList().forEach(chart -> log.info("chart 객채 내용 : " + chart));
	}
	
	
	@Test
	public void testGetListWithPaging() {
		
		Criteria cri = new Criteria();
		
		cri.setPageNum(3);
		cri.setAmount(5);
		
		List<ChartVO> list = mapper.getListWithPaging(cri);
		
		list.forEach(chart -> log.info(chart));
		
		
	}
	
	@Test
	public void testGetTotalCount() {
		
		Criteria cri = new Criteria(1, 10, 1);
		
		int totalCnt = mapper.getTotalCount(cri);
		
		log.info("totalCnt = " + totalCnt);
		
	}
	
	@Test
	public void testFrontGetList() {
		
		Criteria cri = new Criteria(1, 100, 1);
		
		List<ChartVO> list = mapper.front_getList(cri);
		list.forEach(chart -> log.info(chart));
		
	}
	
}
