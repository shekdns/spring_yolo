package kr.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ync.domain.Album_ReplyVO;
import kr.ync.domain.Criteria;

public interface Album_ReplyMapper {
	
public int insert(Album_ReplyVO reply);
	
	public Album_ReplyVO read(int album_reply_idx);
	
	public int delete(int album_reply_idx);
	
	public int update(Album_ReplyVO reply);
	
	public List<Album_ReplyVO> getList(@Param("cri") Criteria cri, @Param("album_idx") int album_idx);
	
	public List<Album_ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("album_idx") int album_idx);
	
	public int getCountByBno(int album_idx);
}
