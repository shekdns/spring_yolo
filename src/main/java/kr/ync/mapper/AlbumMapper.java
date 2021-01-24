package kr.ync.mapper;

import java.util.List;

import kr.ync.domain.AlbumVO;
import kr.ync.domain.ArtistVO;
import kr.ync.domain.Criteria;

// 앨범 관련 Mapper 
public interface AlbumMapper {

	public int insert(AlbumVO album);
	
	//글 넣기 등록 
	public Integer insertSelectKey(AlbumVO album);
	
	//글 리스트
	public List<AlbumVO> getList();
		
	//글 리스트 페이지
	public List<AlbumVO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);

	//읽기
	public AlbumVO read(int album_idx);
	
	public int update(AlbumVO album);
	
	public int delete(int album_idx);
	
	
	//프론트 앨범
	public List<AlbumVO> frontAlbum();
	
	//프론트 앨범 페이지 
	public List<AlbumVO> frontAlbum_getListWithPaging(Criteria cri);
	
	public List<AlbumVO> frontAlbum_get(int album_idx);
	
	public List<AlbumVO> front_artist_getList(int artist_idx); 
	
	
}
