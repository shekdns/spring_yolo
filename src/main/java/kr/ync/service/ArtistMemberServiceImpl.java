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
	
	
	@Override
	public List<ArtistMemberVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public List<ArtistMemberVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(cri);
	}

	@Override
	public void artist_member_register(ArtistMemberVO artist_member) {
		// TODO Auto-generated method stub
		
		mapper.insertSelectKey(artist_member);
	}

	@Override
	public ArtistMemberVO get(int artist_member_idx) {
		// TODO Auto-generated method stub
		return mapper.read(artist_member_idx);
	}

	@Override
	public boolean artist_member_modify(ArtistMemberVO artist_member) {
		// TODO Auto-generated method stub
		return mapper.update(artist_member) == 1;
	} 

	@Override
	public boolean artist_member_remove(int artist_member_idx) {
		// TODO Auto-generated method stub
		return mapper.delete(artist_member_idx) == 1;
	}

}
