package kr.ync.mapper;

import java.util.List;

import kr.ync.domain.ListVO;

// 마이 리스트 Mapper
public interface ListMapper {
	
	//GET
	public int insert2(String id, int song_idx, int album_idx);
	
	//POST
	public int insert(ListVO list);
	
	public List<ListVO> getList(String id);
	
	//public int checkList(String id, int song_idx);
	public int checkList(ListVO list);
	
	public  List<ListVO> checkList2(ListVO list);
	
	//public int like_delete(String id, int song_idx);
	public int like_delete(ListVO list);
	
	public List<ListVO> showList();
	
	
	
}
