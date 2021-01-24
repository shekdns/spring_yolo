package kr.ync.domain;

import lombok.Data;

// 마이 리스트 VO
@Data
public class ListVO {
	
	public int list_idx;
	public String id;
	public int like_count;
	public int album_idx;
	public int song_idx;
	
	public SongVO song;
	public AlbumVO album;
	
}
