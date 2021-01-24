package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.Album_ReplyPageDTO;
import kr.ync.domain.Album_ReplyVO;
import kr.ync.domain.Artist_ReplyPageDTO;
import kr.ync.domain.Criteria;
import kr.ync.mapper.Album_ReplyMapper;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class Album_ReplyServiceImpl implements Album_ReplyService{
	
	@Autowired
	private Album_ReplyMapper mapper;
	
	//앨범 댓글 등록
	@Override
	public int register(Album_ReplyVO reply) {
		// TODO Auto-generated method stub
		log.info("register......" + reply);
		return mapper.insert(reply);
	}
	
	//앨범 댓글 조회
	@Override
	public Album_ReplyVO get(int album_reply_idx) {
		// TODO Auto-generated method stub
		return mapper.read(album_reply_idx);
	}
	//앨범 댓글 수정
	@Override
	public int modify(Album_ReplyVO reply) {
		// TODO Auto-generated method stub
		return mapper.update(reply);
	}
	//앨범 댓글 삭제
	@Override
	public int remove(int album_reply_idx) {
		// TODO Auto-generated method stub
		return mapper.delete(album_reply_idx);
	}
	//앨범 댓글 목록
	@Override
	public List<Album_ReplyVO> getList(Criteria cri, int album_idx) {
		// TODO Auto-generated method stub
		return mapper.getList(cri, album_idx);
	}
	//앨범 댓글 페이징
	@Override
	public Album_ReplyPageDTO getListWithPaging(Criteria cri, int album_idx) {
		// TODO Auto-generated method stub
		return new Album_ReplyPageDTO(
				mapper.getCountByBno(album_idx), 
				mapper.getListWithPaging(cri, album_idx));
	}

}
