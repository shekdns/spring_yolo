package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.ArtistVO;
import kr.ync.domain.Criteria;
import kr.ync.mapper.ArtistMapper;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class ArtistServiceImpl implements ArtistService {
	
	@Autowired
	private ArtistMapper mapper;
	
	//가수 목록 리스트
	@Override
	public List<ArtistVO> getList() {
		// TODO Auto-generated method stub
		
		log.info("getArtistList................");
		
		return mapper.getList();
	}
	//가수 목록 페이징
	@Override
	public List<ArtistVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getArtistList with criteria: " + cri);
		
		return mapper.getListWithPaging(cri);
	}
	//가수 총 갯수
	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
	//가수 등록
	@Override
	public void artist_register(ArtistVO artist) {
		// TODO Auto-generated method stub
		log.info("register......" + artist);

		mapper.insertSelectKey(artist);
		
		
	}
	//가수 조회
	@Override
	public ArtistVO get(int artist_idx) {
		// TODO Auto-generated method stub
		log.info("get......" + artist_idx);

		return mapper.read(artist_idx);
	}
	//가수 수정
	@Override
	public boolean artist_modify(ArtistVO artist) {
		// TODO Auto-generated method stub
		log.info("modify......" + artist);
		
		// SQL 성공 시 <update tag에서 update 된 갯수를 리턴. 따라서 mapper.update(board)의 값은 1이됨. 
		// return true 가 됨.
		return mapper.update(artist) == 1;
	}
	//가수 삭제
	@Override
	public boolean artist_remove(int artist_idx) {
		// TODO Auto-generated method stub
		log.info("remove...." + artist_idx);

		return mapper.delete(artist_idx) == 1;
	}
	//메인페이지 가수 리스트
	@Override
	public List<ArtistVO> frontArtist() {
		// TODO Auto-generated method stub
		return mapper.frontArtist();
	}
	//가수 상세 페이지 조회
	@Override
	public List<ArtistVO> frontArtist_get(int artist_idx) {
		// TODO Auto-generated method stub
		return mapper.frontArtist_get(artist_idx);
	}
	//가수 상세 페이지 멤버 조회 
	@Override
	public List<ArtistVO> frontArtist_get_member(int artist_idx) {
		// TODO Auto-generated method stub
		return mapper.frontArtist_get_member(artist_idx);
	}
	
	
}
