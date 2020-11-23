package kr.ync.service;

import java.util.List;import com.sun.jdi.CharValue;

import kr.ync.domain.ChartVO;
import kr.ync.domain.Criteria;

public interface ChartService {
	
	// 업로드
	public void uploadDB();
	// 업데이트 
	public void updateDB();
	// 전체 삭제
	public void clearDB();
	
	// 전체 글 목록
	public List<ChartVO> getList();
	// 글목록 페이징
	public List<ChartVO> getListWithPaging(Criteria cri);
	// 추가
	public int getTotal(Criteria cri);
	
	//프론트
	public List<ChartVO> frontMainChart();
	
	//프론트 차트 페이지
	public List<ChartVO> front_getList(Criteria cri);
}
