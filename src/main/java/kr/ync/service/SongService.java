package kr.ync.service;

import java.util.List;

import kr.ync.domain.AlbumVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.SongVO;

public interface SongService {
	
	public int song_register(SongVO song);

	// 전체 글 목록
	public List<SongVO> getList();
	// 글목록 페이징
	public List<SongVO> getListWithPaging(Criteria cri);
	// 추가
	public int getTotal(Criteria cri);
	
	// 글 상세보기
	public SongVO get(int song_idx);
	
	// 글 수정
	public boolean song_modify(SongVO song);
	
	// 글 삭제
	public boolean song_remove(int song_idx);
	
	
	//프론트 리스트 
	public List<SongVO> frontMain();
	public List<SongVO> frontMain2();
	public List<SongVO> front12();
	public List<SongVO> front_video();
	
	public List<SongVO> frontAlbum_get(int album_idx);
	

}
