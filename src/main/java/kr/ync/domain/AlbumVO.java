package kr.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AlbumVO {
	
	public int album_idx;
	public String album_name;
	public String artist_name;
	public String album_img_path;
	public Date   regdate;
	public String album_type;
	public String genre;
	public int artist_idx;
	
	
	public SongVO song;
	
}
