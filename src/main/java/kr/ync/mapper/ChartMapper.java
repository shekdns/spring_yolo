package kr.ync.mapper;

import java.util.List;

import kr.ync.domain.ChartVO;
import kr.ync.domain.Criteria;

public interface ChartMapper {
	
	// 업로드
	public void uploadDB(ChartVO chart);
	
	// 업데이트 
	public void updateDB(ChartVO chart);
	// 전체 삭제
	public void clearDB();
	
	//글 리스트
	public List<ChartVO> getList();
	
	//글 리스트 페이지
	public List<ChartVO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	//프론트
	public List<ChartVO> frontMainChart();
	
	//프론트 차트 페이지
	public List<ChartVO> front_getList(Criteria cri);
	
}
