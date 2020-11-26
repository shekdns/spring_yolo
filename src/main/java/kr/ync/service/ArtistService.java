package kr.ync.service;

import java.util.List;

import kr.ync.domain.ArtistVO;
import kr.ync.domain.BoardVO;
import kr.ync.domain.Criteria;

public interface ArtistService {

		// 전체 글 목록
		public List<ArtistVO> getList();
		// 글목록 페이징
		public List<ArtistVO> getListWithPaging(Criteria cri);
		// 추가
		public int getTotal(Criteria cri);
		
		// 글 등록
		public void artist_register(ArtistVO artist);
		
		// 글 상세보기
		public ArtistVO get(int artist_idx);
		
		// 글 수정
		public boolean artist_modify(ArtistVO artist);
		
		// 글 삭제
		public boolean artist_remove(int artist_idx);
	
		//프론트
		public List<ArtistVO> frontArtist();
		public List<ArtistVO> frontArtist_get(int artist_idx);
		public List<ArtistVO> frontArtist_get_member(int artist_idx);
		
}
