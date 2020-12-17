package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.Album_ReplyPageDTO;
import kr.ync.domain.Criteria;
import kr.ync.domain.Song_ReplyPageDTO;
import kr.ync.domain.Song_ReplyVO;
import kr.ync.mapper.Song_ReplyMapper;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class Song_ReplyServiceImpl implements Song_ReplyService {

	@Autowired
	private Song_ReplyMapper mapper;

	@Override
	public int register(Song_ReplyVO reply) {
		// TODO Auto-generated method stub
		return mapper.insert(reply);
	}

	@Override
	public Song_ReplyVO get(int song_reply_idx) {
		// TODO Auto-generated method stub
		return mapper.read(song_reply_idx);
	}

	@Override
	public int modify(Song_ReplyVO reply) {
		// TODO Auto-generated method stub
		return mapper.update(reply);
	}

	@Override
	public int remove(int song_reply_idx) {
		// TODO Auto-generated method stub
		return mapper.delete(song_reply_idx);
	}

	@Override
	public List<Song_ReplyVO> getList(Criteria cri, int song_idx) {
		// TODO Auto-generated method stub
		return mapper.getList(cri, song_idx);
	}

	@Override
	public Song_ReplyPageDTO getListWithPaging(Criteria cri, int song_idx) {
		// TODO Auto-generated method stub
		return new Song_ReplyPageDTO(
				mapper.getCountByBno(song_idx), 
				mapper.getListWithPaging(cri, song_idx));
	}
	
}
