package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.AlbumVO;
import kr.ync.domain.ArtistVO;
import kr.ync.domain.Criteria;
import kr.ync.mapper.SearchMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	
	private SearchMapper mapper;

	@Override
	public List<ArtistVO> search_list(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.search_list(cri);
	}

	@Override
	public List<AlbumVO> search_AlbumRandom() {
		// TODO Auto-generated method stub
		return mapper.search_AlbumRandom();
	}

	@Override
	public List<ArtistVO> search_ArtistRandom() {
		// TODO Auto-generated method stub
		return mapper.search_ArtistRandom();
	}
	
	
	
}
