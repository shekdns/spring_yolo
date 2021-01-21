package kr.ync.mapper;

import java.util.List;

import kr.ync.domain.AlbumVO;
import kr.ync.domain.ArtistVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.SongVO;

public interface SearchMapper {
	
	
	public List<ArtistVO> search_list(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	public List<AlbumVO> search_AlbumRandom();
	
	public List<ArtistVO> search_ArtistRandom();
}
