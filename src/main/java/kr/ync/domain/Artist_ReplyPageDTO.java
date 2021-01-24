package kr.ync.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

// 가수 댓글 DTO
@Data
@AllArgsConstructor
public class Artist_ReplyPageDTO {
	
	  public int replyCnt;
	  public List<Artist_ReplyVO> list;

}
