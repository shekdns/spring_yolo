package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.Artist_ReplyPageDTO;
import kr.ync.domain.Artist_ReplyVO;
import kr.ync.domain.Criteria;
import kr.ync.mapper.Artist_ReplyMapper;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class Artist_ReplyServiceImpl implements Artist_ReplyService{

	@Autowired
	private Artist_ReplyMapper mapper;
	
	//가수 댓글 등록
	@Override
	public int register(Artist_ReplyVO reply) {
		// TODO Auto-generated method stub
		
		log.info("register......" + reply);
		return mapper.insert(reply);
	}
	
	//가수 댓글 조회
	@Override
	public Artist_ReplyVO get(int artist_reply_idx) {
		// TODO Auto-generated method stub
		return mapper.read(artist_reply_idx);
	}
	//가수 댓글 수정
	@Override
	public int modify(Artist_ReplyVO reply) {
		// TODO Auto-generated method stub
		return mapper.update(reply);
	}
	//가수 댓글 삭제
	@Override
	public int remove(int artist_reply_idx) {
		// TODO Auto-generated method stub
		return mapper.delete(artist_reply_idx);
	}
	//가수 댓글 목록
	@Override
	public List<Artist_ReplyVO> getList(Criteria cri, int artist_idx) {
		// TODO Auto-generated method stub
		log.info("get Reply List of a Board " + artist_idx);
		return mapper.getList(cri, artist_idx);
	}
	//가수 댓글 페이징
	@Override
	public Artist_ReplyPageDTO getListWithPaging(Criteria cri, int artist_idx) {
		// TODO Auto-generated method stub
		return new Artist_ReplyPageDTO(
				mapper.getCountByBno(artist_idx), 
				mapper.getListWithPaging(cri, artist_idx));
	
	
	}


}
