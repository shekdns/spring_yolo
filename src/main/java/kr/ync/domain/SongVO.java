package kr.ync.domain;

import lombok.Data;
// 음악 VO
@Data
public class SongVO {
	
	
	public int song_idx;
	public String song_name;
	public String album_name;
	public String artist_name;
	public String song_img_path;
	public String mp3_path;
	public String lyc_path;
	public String lyrics;
	public String composition;
	public int album_idx;
	public int artist_idx;
	public String genre;
	public String song_video;
	
}
