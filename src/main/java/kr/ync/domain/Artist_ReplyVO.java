package kr.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Artist_ReplyVO {

	public int artist_reply_idx;
	public String reply;
	public String replyer;
	public Date replyDate;
	public Date updateDate;
	public int artist_idx;
	
}
