package kr.ync.mapper;

import java.util.List;

import kr.ync.domain.ListVO;

public interface ListMapper {
	
	//GET
	public int insert2(String id, int song_idx, int album_idx);
	
	//POST
	public int insert(ListVO list);
	
	public List<ListVO> getList();
	
	
	
}
