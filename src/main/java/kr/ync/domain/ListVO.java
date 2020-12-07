package kr.ync.domain;

import lombok.Data;

@Data
public class ListVO {
	
	public String id;
	public int like_count;
	public int album_idx;
	public int song_idx;
	
	public SongVO song;
	public AlbumVO album;
	
}
