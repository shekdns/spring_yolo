package kr.ync.service;

import java.util.List;

import kr.ync.domain.AlbumVO;
import kr.ync.domain.ArtistVO;
import kr.ync.domain.Criteria;

public interface SearchService {
	
	public List<ArtistVO> search_list(Criteria cri);
	
	public List<AlbumVO> search_AlbumRandom();
	
	public List<ArtistVO> search_ArtistRandom();
}
