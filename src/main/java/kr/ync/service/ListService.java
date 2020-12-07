package kr.ync.service;

import kr.ync.domain.ListVO;

public interface ListService {
	
	public int list_like(String id, int song_idx, int album_idx);

	public int list_input(ListVO list);
}
