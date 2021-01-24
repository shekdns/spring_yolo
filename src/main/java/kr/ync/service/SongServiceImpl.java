package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.Criteria;
import kr.ync.domain.SongVO;
import kr.ync.mapper.SongMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SongServiceImpl implements SongService {

	@Autowired
	private SongMapper mapper;
	
	//음악 등록
	@Override
	public int song_register(SongVO song) {
		// TODO Auto-generated method stub
		log.info("song_register......" + song);

		return mapper.insertSelectKey(song);
	}
	
	//음악 목록 리스트
	@Override
	public List<SongVO> getList() {
		// TODO Auto-generated method stub
		log.info("getSongList................");
		return mapper.getList();
	}
	
	//음악 목록 페이징
	@Override
	public List<SongVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getSongList................");
		return mapper.getListWithPaging(cri);
	}
	//음악 총 갯수
	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getSongList................");
		return mapper.getTotalCount(cri);
	}
	//음악 조회
	@Override
	public SongVO get(int song_idx) {
		// TODO Auto-generated method stub
		log.info("getAlbum................." + song_idx);
		return mapper.read(song_idx);
	}
	//음악 수정
	@Override
	public boolean song_modify(SongVO song) {
		// TODO Auto-generated method stub\
		log.info("song_modify..............." + song);
		return mapper.update(song) == 1;
	}
	//음악 삭제
	@Override
	public boolean song_remove(int song_idx) {
		// TODO Auto-generated method stub
		return mapper.delete(song_idx) == 1;
	}
	//메인 페이지 음악 리스트
	@Override
	public List<SongVO> frontMain() {
		// TODO Auto-generated method stub
		log.info("getFrontSongList................");
		return mapper.frontMain();
	}
	//메인 페이지 음악 리스트2
	@Override
	public List<SongVO> frontMain2() {
		// TODO Auto-generated method stub
		log.info("getFrontSongList................");
		return mapper.frontMain2();
	}
	//메인 페이지 음악 최신 12개 출력
	@Override
	public List<SongVO> front12() {
		// TODO Auto-generated method stub
		return mapper.front12();
	}
	//메인 페이지 영상 리스트 
	@Override
	public List<SongVO> front_video() {
		// TODO Auto-generated method stub
		return mapper.front_video();
	}
	//상세 앨범 페이지 관련 음악 리스트
	@Override
	public List<SongVO> frontAlbum_get(int album_idx) {
		// TODO Auto-generated method stub
		return mapper.frontAlbum_get(album_idx);
	}
	//임의의 음악 리스트
	@Override
	public List<SongVO> front_SongRandom() {
		// TODO Auto-generated method stub
		return mapper.front_SongRandom();
	}
	//상세 가수 페이지 관련 음악 리스트
	@Override
	public List<SongVO> frontArtist_get(int artist_idx) {
		// TODO Auto-generated method stub
		return mapper.frontArtist_get(artist_idx);
	}	
	//영상 페이지 리스트 페이징
	@Override
	public List<SongVO> front_videoGetListPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.front_videoGetListPaging(cri);
	}
	//영상 페이지 총 갯수
	@Override
	public int front_videoTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.front_videoTotal(cri);
	}

}
