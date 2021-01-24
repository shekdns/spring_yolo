package kr.ync.mapper;

import java.util.List;

import kr.ync.domain.ArtistMemberVO;
import kr.ync.domain.Criteria;

// 가수 멤버 Mapper
public interface ArtistMemberMapper {

	//글 넣기
	public void insert(ArtistMemberVO amv);
	
	//글 넣기 등록 
	public Integer insertSelectKey(ArtistMemberVO amv);
	
	//글 리스트
	public List<ArtistMemberVO> getList();
		
	//글 리스트 페이지
	public List<ArtistMemberVO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	public ArtistMemberVO read(int artist_member_idx);
	
	public int update(ArtistMemberVO artist_member);
	
	public int delete(int artist_member_idx);
	
	public List<ArtistMemberVO> front_getArtistMember(int artist_idx);
	
}
