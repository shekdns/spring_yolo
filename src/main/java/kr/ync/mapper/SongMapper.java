package kr.ync.mapper;

import java.util.List;

import kr.ync.domain.AlbumVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.SongVO;

public interface SongMapper {

	public int insert(SongVO song);

	public Integer insertSelectKey(SongVO song);

	// 글 리스트
	public List<SongVO> getList();

	// 글 리스트 페이지
	public List<SongVO> getListWithPaging(Criteria cri);

	public int getTotalCount(Criteria cri);
	
	//읽기
	public SongVO read(int song_idx);
	
	public int update(SongVO song);
	
	public int delete(int song_idx);
	
	//프론트 영역
	public List<SongVO> frontMain();
	public List<SongVO> frontMain2();
	public List<SongVO> front12();
	public List<SongVO> front_video();
	
	
	//프론트 앨범 조인
	public List<SongVO> frontAlbum_get(int album_idx);
	
	
	
}
