package kr.ync.service;

import java.util.List;

import kr.ync.domain.Album_ReplyPageDTO;
import kr.ync.domain.Album_ReplyVO;
import kr.ync.domain.Criteria;

public interface Album_ReplyService {
	
	public int register(Album_ReplyVO reply);

	public Album_ReplyVO get(int album_reply_idx);

	public int modify(Album_ReplyVO reply);
	
	public int remove(int album_reply_idx);

	public List<Album_ReplyVO> getList(Criteria cri, int album_idx);
	
	public Album_ReplyPageDTO getListWithPaging(Criteria cri, int album_idx);
}
