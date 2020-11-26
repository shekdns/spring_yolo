package kr.ync.service;

import java.util.List;

import kr.ync.domain.AlbumVO;
import kr.ync.domain.ArtistVO;
import kr.ync.domain.Criteria;

public interface AlbumService {
	
	public int album_register(AlbumVO album);
	
	// 전체 글 목록
	public List<AlbumVO> getList();
	// 글목록 페이징
	public List<AlbumVO> getListWithPaging(Criteria cri);
	// 추가
	public int getTotal(Criteria cri);
	
	// 글 상세보기
	public AlbumVO get(int album_idx);
	
	// 글 수정
	public boolean album_modify(AlbumVO album);
	
	// 글 삭제
	public boolean album_remove(int album_idx);
	
	//프론트
	public List<AlbumVO> frontAlbum();
	
	//프론트 앨범 페이지
	public List<AlbumVO> frontAlbum_getListWithPaging(Criteria cri);
	
	public List<AlbumVO> frontAlbum_get(int album_idx);
	
	public List<AlbumVO> front_artist_getList(int artist_idx);
	

}
