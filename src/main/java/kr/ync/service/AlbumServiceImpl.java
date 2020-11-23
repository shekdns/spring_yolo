package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.AlbumVO;
import kr.ync.domain.Criteria;
import kr.ync.mapper.AlbumMapper;
import kr.ync.mapper.ArtistMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AlbumServiceImpl implements AlbumService {

	@Autowired
	private AlbumMapper album_mapper;
	
	@Autowired
	private ArtistMapper artist_mapper;
	
	@Override
	public int album_register(AlbumVO album) {
		// TODO Auto-generated method stub
		log.info("album_register......" + album);
		
		return album_mapper.insertSelectKey(album);
	}

	@Override
	public List<AlbumVO> getList() {
		// TODO Auto-generated method stub
		log.info("getAlbumList................");
		return album_mapper.getList();
	}

	@Override
	public List<AlbumVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getAlbumList................");
		return album_mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getAlbumList................");
		return album_mapper.getTotalCount(cri);
	}

	@Override
	public AlbumVO get(int album_idx) {
		// TODO Auto-generated method stub
		log.info("getAlbum................." + album_idx);
		return album_mapper.read(album_idx);
	}

	@Override
	public boolean album_modify(AlbumVO album) {
		// TODO Auto-generated method stub
		log.info("modify............. " + album);
		
		return  album_mapper.update(album) == 1;
	}

	@Override
	public boolean album_remove(int album_idx) {
		// TODO Auto-generated method stub
		log.info("remove...." + album_idx);

		return album_mapper.delete(album_idx) == 1;
	}

	@Override
	public List<AlbumVO> frontAlbum() {
		// TODO Auto-generated method stub
		
		log.info("album list.....");
		
		return album_mapper.frontAlbum();
	}

	@Override
	public List<AlbumVO> frontAlbum_getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return album_mapper.frontAlbum_getListWithPaging(cri);
	}

	@Override
	public List<AlbumVO> frontAlbum_get(int album_idx) {
		// TODO Auto-generated method stub
		return album_mapper.frontAlbum_get(album_idx);
	}

}
