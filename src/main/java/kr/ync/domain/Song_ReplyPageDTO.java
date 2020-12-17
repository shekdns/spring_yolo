package kr.ync.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Song_ReplyPageDTO {
	
	public int replyCnt;
	public List<Song_ReplyVO> list;
}
