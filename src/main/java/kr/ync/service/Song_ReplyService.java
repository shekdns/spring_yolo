package kr.ync.service;

import java.util.List;

import kr.ync.domain.Criteria;
import kr.ync.domain.Song_ReplyPageDTO;
import kr.ync.domain.Song_ReplyVO;

public interface Song_ReplyService {
	
	public int register(Song_ReplyVO reply);

	public Song_ReplyVO get(int song_reply_idx);

	public int modify(Song_ReplyVO reply);
	
	public int remove(int song_reply_idx);

	public List<Song_ReplyVO> getList(Criteria cri, int song_idx);
	
	public Song_ReplyPageDTO getListWithPaging(Criteria cri, int song_idx);

}
