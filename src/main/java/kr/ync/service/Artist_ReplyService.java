package kr.ync.service;

import java.util.List;

import kr.ync.domain.Artist_ReplyPageDTO;
import kr.ync.domain.Artist_ReplyVO;
import kr.ync.domain.Criteria;



public interface Artist_ReplyService {
	
	public int register(Artist_ReplyVO reply);

	public Artist_ReplyVO get(int artist_reply_idx);

	public int modify(Artist_ReplyVO reply);
	
	//public int modify(int artist_reply_idx);

	public int remove(int artist_reply_idx);

	public List<Artist_ReplyVO> getList(Criteria cri, int artist_idx);
	
	public Artist_ReplyPageDTO getListWithPaging(Criteria cri, int artist_idx);
	
}
