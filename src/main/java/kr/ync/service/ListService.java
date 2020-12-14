package kr.ync.service;

import java.util.List;

import kr.ync.domain.ListVO;

public interface ListService {
	
	public int list_like(String id, int song_idx, int album_idx);

	public int list_input(ListVO list);
	
	//public int checkList(String id, int song_idx);
	public List<ListVO> checkList2(ListVO list);
	public int checkList(ListVO list);
	
	public List<ListVO> showList();
	
	//public int like_delete(String id, int song_idx);
	public int like_delete(ListVO list);
	
	public List<ListVO> getList(String id);

}

