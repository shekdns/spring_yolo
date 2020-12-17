package kr.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ync.domain.Criteria;
import kr.ync.domain.Song_ReplyVO;

public interface Song_ReplyMapper {
	
public int insert(Song_ReplyVO reply);
	
	public Song_ReplyVO read(int song_reply_idx);
	
	public int delete(int song_reply_idx);
	
	public int update(Song_ReplyVO reply);
	
	//public int update(int artist_reply_idx);
	
	public List<Song_ReplyVO> getList(@Param("cri") Criteria cri, @Param("song_idx") int song_idx);
	
	public List<Song_ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("song_idx") int song_idx);
	
	public int getCountByBno(int song_idx);

}
