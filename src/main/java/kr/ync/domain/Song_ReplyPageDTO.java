package kr.ync.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

// 음악 댓글 페이지 DTO
@Data
@AllArgsConstructor
public class Song_ReplyPageDTO {
	
	public int replyCnt;
	public List<Song_ReplyVO> list;
}
