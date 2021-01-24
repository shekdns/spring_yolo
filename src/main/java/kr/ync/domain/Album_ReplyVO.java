package kr.ync.domain;

import java.util.Date;

import lombok.Data;

// 앨범 댓글 VO
@Data
public class Album_ReplyVO {

	public int album_reply_idx;
	public String reply;
	public String replyer;
	public Date replyDate;
	public Date updateDate;
	public int album_idx;

}
