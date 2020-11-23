package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.Criteria;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" , 
	"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class ChartServiceTests {

	
	@Setter(onMethod_ = { @Autowired})
	private ChartService service;
	
	//차트 업로드 서비스 테스트 코드
	@Test
	public void testChartUpload() {
		
		log.info(service);	
		service.uploadDB();
		
		
	}
	
	//차트 업데이트 서비스 테스트 코드
//	@Test
//	public void testChartUpdate() {
//		
//		log.info(service);
//		service.updateDB();
//		
//	}
	
	
	//차트 초기화 테스트 코드
//	@Test
//	public void testChartClear() {
//		
//		log.info(service);
//		service.clearDB();
//	}
	
	
	//차트 리스트 전체 테스트 코드
	
//	@Test
//	public void testGetChatList() {
//		
//		service.getList().forEach(chart -> log.info(chart));
//		
//	}
	
	//차트 리스트 페이징
//	@Test
//	public void testChartGetListPaging() {
//		
//		service.getListWithPaging(new Criteria(2, 5)).forEach(chart -> log.info(chart));
//		
//	}
	
//	@Test
//	public void testChartGetTotal() {
//		
//		Criteria cri = new Criteria();
//		
//		log.info("total Cnt = " + service.getTotal(cri));
//		
//	}
	
}
