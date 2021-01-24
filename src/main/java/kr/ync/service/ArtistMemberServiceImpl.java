package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.ArtistMemberVO;
import kr.ync.domain.Criteria;
import kr.ync.mapper.ArtistMemberMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ArtistMemberServiceImpl implements ArtistMemberService{

	@Autowired
	private ArtistMemberMapper mapper;
	
	//가수 멤버 리스트
	@Override
	public List<ArtistMemberVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}
	//가수 멤버 페이징
	@Override
	public List<ArtistMemberVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getListWithPaging(cri);
	}
	//가수 멤버 총 갯수
	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(cri);
	}
	//가수 멤버 등록
	@Override
	public void artist_member_register(ArtistMemberVO artist_member) {
		// TODO Auto-generated method stub
		
		mapper.insertSelectKey(artist_member);
	}
	//가수 멤버 조회
	@Override
	public ArtistMemberVO get(int artist_member_idx) {
		// TODO Auto-generated method stub
		return mapper.read(artist_member_idx);
	}
	//가수 멤버 수정
	@Override
	public boolean artist_member_modify(ArtistMemberVO artist_member) {
		// TODO Auto-generated method stub
		return mapper.update(artist_member) == 1;
	} 
	//가수 멤버 삭제
	@Override
	public boolean artist_member_remove(int artist_member_idx) {
		// TODO Auto-generated method stub
		return mapper.delete(artist_member_idx) == 1;
	}
	//가수 상세 페이지 멤버 리스트
	@Override
	public List<ArtistMemberVO> front_getArtistMember(int artist_idx) {
		// TODO Auto-generated method stub
		return mapper.front_getArtistMember(artist_idx);
	}

}
