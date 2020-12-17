package kr.ync.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Artist_ReplyPageDTO {
	
	  public int replyCnt;
	  public List<Artist_ReplyVO> list;

}
