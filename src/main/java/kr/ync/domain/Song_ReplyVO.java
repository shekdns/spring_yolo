package kr.ync.domain;

import java.util.Date;

import lombok.Data;

// 음악 댓글 VO
@Data
public class Song_ReplyVO {
	
	public int song_reply_idx;
	public String reply;
	public String replyer;
	public Date replyDate;
	public Date updateDate;
	public int song_idx;
	
}
