package kr.ync.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

//앨범 댓글 페이지 DTO
@Data
@AllArgsConstructor
public class Album_ReplyPageDTO {
	
	public int replyCnt;
	public List<Album_ReplyVO> list;

}
