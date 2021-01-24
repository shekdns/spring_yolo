package kr.ync.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.domain.Criteria;
import kr.ync.domain.PageDTO;
import kr.ync.service.AlbumService;
import kr.ync.service.ArtistMemberService;
import kr.ync.service.ArtistService;
import kr.ync.service.ChartService;
import kr.ync.service.ListService;
import kr.ync.service.SongService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
public class FrontController {
	
	@Autowired
	private SongService song_service;

	@Autowired
	private AlbumService album_service;
	
	@Autowired
	private ChartService chart_service;
	
	@Autowired
	private ArtistService artist_service;
	
	@Autowired
	private ArtistMemberService artist_member_service;
	
	@Autowired
	private ListService list_service;
	
	// 1. 메인 페이지 메소드
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/index")
	public void index(Model model) {
		//song_service.frontMain();
		model.addAttribute("main_song", song_service.frontMain());
		model.addAttribute("main_song2", song_service.frontMain2());
		model.addAttribute("main_album", album_service.frontAlbum());
		model.addAttribute("main_song12", song_service.front12());
		model.addAttribute("main_artist", artist_service.frontArtist());
		model.addAttribute("main_chart", chart_service.frontMainChart());
		model.addAttribute("main_video", song_service.front_video());
	
	}
	
	// 2. 차트 페이지 메소드
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/chart")
	public void chart(Criteria cri, Model model, @RequestParam(value = "gnrcode" , required = false, defaultValue = "1") int gnrcode) {
		cri = new Criteria(1, 100, gnrcode);
		log.info("chart: " + cri);
		model.addAttribute("chart" , chart_service.front_getList(cri));
	}
	
	// 3. 앨벰 페이지 메소드
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/album")
	public void album(Criteria cri, Model model) {
		cri = new Criteria(cri.getPageNum(), 8);
		int total = album_service.getTotal(cri);
		log.info("total : " + total);
		model.addAttribute("album", album_service.frontAlbum_getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	// 4. 앨범 상세 페이지 메소드
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/album_get")
	public void album_get(Model model, @RequestParam("album_idx") int album_idx) {
		
		model.addAttribute("album", album_service.get(album_idx));
		model.addAttribute("song", song_service.frontAlbum_get(album_idx));
		model.addAttribute("list", list_service.showList());
	
	}
	
	// 5. 음악 페이지 메소드
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/song")
	public void song(Criteria cri, Model model) {
		
		cri = new Criteria(cri.getPageNum(), 18);
		int total = song_service.getTotal(cri);
		log.info("total = " + total);
		
		model.addAttribute("song", song_service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
	}
	
	// 6. 음악 상세 페이지 메소드
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/song_get")
	public void song_get(Model model, @RequestParam("song_idx") int song_idx) {
		model.addAttribute("song", song_service.get(song_idx));
		model.addAttribute("random", song_service.front_SongRandom());
		model.addAttribute("list", list_service.showList());
	}
	
	// 7. 가수 페이지 메소드
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/artist")
	public void artist(Criteria cri, Model model) {
		
		cri = new Criteria(cri.getPageNum(), 18);
		int total = artist_service.getTotal(cri);
		log.info("total = " + total);
		
		model.addAttribute("artist", artist_service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	// 8. 가수 상세 페이지 메소드
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/artist_get")
	public void artist_get(Model model, @RequestParam("artist_idx") int artist_idx) {
		
		model.addAttribute("album", album_service.front_artist_getList(artist_idx));
		model.addAttribute("atm", artist_member_service.front_getArtistMember(artist_idx));
		model.addAttribute("artist" , artist_service.get(artist_idx)); // 아티스트만 들고오기 
		model.addAttribute("song", song_service.frontArtist_get(artist_idx));
		model.addAttribute("list", list_service.showList());
		
	}
	
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/video")
	public void video(Criteria cri, Model model) {
		cri = new Criteria(cri.getPageNum(), 9);
		int total = song_service.front_videoTotal(cri);
		
		model.addAttribute("song", song_service.front_videoGetListPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	

	
	
}
