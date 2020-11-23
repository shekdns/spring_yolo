package kr.ync.domain;

import java.util.Date;

import lombok.Data;

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
	
//	public ChartVO(int rank, String name, String artist, String album, String img_path) {
//		this.rank = rank;
//		this.name = name;
//		this.artist = artist;
//		this.album = album;
//		this.img_path = img_path;
//	}
	
	
	
	
}
