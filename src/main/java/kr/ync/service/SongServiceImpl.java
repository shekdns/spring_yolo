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

	@Override
	public int song_register(SongVO song) {
		// TODO Auto-generated method stub
		log.info("song_register......" + song);

		return mapper.insertSelectKey(song);
	}

	@Override
	public List<SongVO> getList() {
		// TODO Auto-generated method stub
		log.info("getSongList................");
		return mapper.getList();
	}

	@Override
	public List<SongVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getSongList................");
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getSongList................");
		return mapper.getTotalCount(cri);
	}

	@Override
	public SongVO get(int song_idx) {
		// TODO Auto-generated method stub
		log.info("getAlbum................." + song_idx);
		return mapper.read(song_idx);
	}

	@Override
	public boolean song_modify(SongVO song) {
		// TODO Auto-generated method stub\
		log.info("song_modify..............." + song);
		return mapper.update(song) == 1;
	}
	
	@Override
	public boolean song_remove(int song_idx) {
		// TODO Auto-generated method stub
		return mapper.delete(song_idx) == 1;
	}

	@Override
	public List<SongVO> frontMain() {
		// TODO Auto-generated method stub
		log.info("getFrontSongList................");
		return mapper.frontMain();
	}

	@Override
	public List<SongVO> frontMain2() {
		// TODO Auto-generated method stub
		log.info("getFrontSongList................");
		return mapper.frontMain2();
	}

	@Override
	public List<SongVO> front12() {
		// TODO Auto-generated method stub
		return mapper.front12();
	}

	@Override
	public List<SongVO> front_video() {
		// TODO Auto-generated method stub
		return mapper.front_video();
	}

	@Override
	public List<SongVO> frontAlbum_get(int album_idx) {
		// TODO Auto-generated method stub
		return mapper.frontAlbum_get(album_idx);
	}

	@Override
	public List<SongVO> front_SongRandom() {
		// TODO Auto-generated method stub
		return mapper.front_SongRandom();
	}

	@Override
	public List<SongVO> frontArtist_get(int artist_idx) {
		// TODO Auto-generated method stub
		return mapper.frontArtist_get(artist_idx);
	}

}
