package kr.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ync.domain.Artist_ReplyVO;
import kr.ync.domain.Criteria;

public interface Artist_ReplyMapper {
	
	public int insert(Artist_ReplyVO reply);
	
	public Artist_ReplyVO read(int artist_reply_idx);
	
	public int delete(int artist_reply_idx);
	
	public int update(Artist_ReplyVO reply);
	
	//public int update(int artist_reply_idx);
	
	public List<Artist_ReplyVO> getList(@Param("cri") Criteria cri, @Param("artist_idx") int artist_idx);
	
	public List<Artist_ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("artist_idx") int artist_idx);
	
	public int getCountByBno(int artist_idx);
	
}
