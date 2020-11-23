package kr.ync.service;

import java.util.List;

import kr.ync.domain.ArtistMemberVO;
import kr.ync.domain.Criteria;

public interface ArtistMemberService {
	
	// 전체 글 목록
			public List<ArtistMemberVO> getList();
			// 글목록 페이징
			public List<ArtistMemberVO> getListWithPaging(Criteria cri);
			// 추가
			public int getTotal(Criteria cri);
			
			// 글 등록
			public void artist_member_register(ArtistMemberVO artist_member);
			
			// 글 상세보기
			public ArtistMemberVO get(int artist_member_idx);
			
			// 글 수정
			public boolean artist_member_modify(ArtistMemberVO artist_member);
			
			// 글 삭제
			public boolean artist_member_remove(int artist_member_idx);
}
