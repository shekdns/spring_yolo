package kr.ync.mapper;

import java.util.List;

import kr.ync.domain.ArtistVO;
import kr.ync.domain.BoardVO;
import kr.ync.domain.ChartVO;
import kr.ync.domain.Criteria;


public interface ArtistMapper {
	
	//글 넣기
	public void insert(ArtistVO av);
	
	//글 넣기 등록 
	public Integer insertSelectKey(ArtistVO av);
	
	//글 리스트
	public List<ArtistVO> getList();
		
	//글 리스트 페이지
	public List<ArtistVO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	public ArtistVO read(int artist_idx);
	
	public int update(ArtistVO artist);
	
	public int delete(int artist_idx);
	
	public List<ArtistVO> frontArtist(); 
	
}
