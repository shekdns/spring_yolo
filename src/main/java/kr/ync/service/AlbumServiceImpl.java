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
	
	//앨범 등록
	@Override
	public int album_register(AlbumVO album) {
		// TODO Auto-generated method stub
		log.info("album_register......" + album);
		
		return album_mapper.insertSelectKey(album);
	}
	//앨범 목록
	@Override
	public List<AlbumVO> getList() {
		// TODO Auto-generated method stub
		log.info("getAlbumList................");
		return album_mapper.getList();
	}
	//앨범 목록 페이징
	@Override
	public List<AlbumVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getAlbumList................");
		return album_mapper.getListWithPaging(cri);
	}
	//앨범 총 갯수
	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getAlbumList................");
		return album_mapper.getTotalCount(cri);
	}
	//앨범 조회
	@Override
	public AlbumVO get(int album_idx) {
		// TODO Auto-generated method stub
		log.info("getAlbum................." + album_idx);
		return album_mapper.read(album_idx);
	}
	//앨범 수정
	@Override
	public boolean album_modify(AlbumVO album) {
		// TODO Auto-generated method stub
		log.info("modify............. " + album);
		
		return  album_mapper.update(album) == 1;
	}
	//앨범 삭제
	@Override
	public boolean album_remove(int album_idx) {
		// TODO Auto-generated method stub
		log.info("remove...." + album_idx);

		return album_mapper.delete(album_idx) == 1;
	}
	//메인 페이지 앨범 리스트
	@Override
	public List<AlbumVO> frontAlbum() {
		// TODO Auto-generated method stub
		
		log.info("album list.....");
		
		return album_mapper.frontAlbum();
	}
	//앨범 페이지 목록 리스트
	@Override
	public List<AlbumVO> frontAlbum_getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return album_mapper.frontAlbum_getListWithPaging(cri);
	}
	//앨범 상세 페이지 조회
	@Override
	public List<AlbumVO> frontAlbum_get(int album_idx) {
		// TODO Auto-generated method stub
		return album_mapper.frontAlbum_get(album_idx);
	}
	//앨범 상세 페이지 가수 조회
	@Override
	public List<AlbumVO> front_artist_getList(int artist_idx) {
		// TODO Auto-generated method stub
		return album_mapper.front_artist_getList(artist_idx);
	}

}
