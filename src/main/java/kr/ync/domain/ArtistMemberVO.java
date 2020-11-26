package kr.ync.domain;

import lombok.Data;

@Data
public class ArtistMemberVO {
	
	public int artist_member_idx;
	public String member_name;
	public int artist_idx;
	public String artist_name;
	public String img_path;
	public String gender;
	public String age;
}
