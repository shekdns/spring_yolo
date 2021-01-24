package kr.ync.domain;

import java.util.Date;

import lombok.Data;

// 가수 댓글 VO
@Data
public class Artist_ReplyVO {

	public int artist_reply_idx;
	public String reply;
	public String replyer;
	public Date replyDate;
	public Date updateDate;
	public int artist_idx;
	
}
