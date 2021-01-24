package kr.ync.domain;

import lombok.Data;

// 가수 VO
@Data
public class ArtistVO {
		
	public int artist_idx;
	public String artist_name;
	public String debut;
	public String artist_type;
	public String gender;
	public String artist_img_path;
	
	public SongVO song;
	public ArtistMemberVO atm;
	public AlbumVO album;
	
}
