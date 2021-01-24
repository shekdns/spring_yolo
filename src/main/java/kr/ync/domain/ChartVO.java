package kr.ync.domain;

import java.util.Date;

import lombok.Data;

// 차트 VO
@Data
public class ChartVO {
	
	public int c_rank;
	public String name;
	public String artist;
	public String album;
	public String img_path;
	public Date regdate;
	public Date updateDate;
	public int gnrcode;
		
	
}
