package kr.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ync.domain.Criteria;
import kr.ync.service.AlbumService;
import kr.ync.service.ArtistMemberService;
import kr.ync.service.ArtistService;
import kr.ync.service.ChartService;
import kr.ync.service.ListService;
import kr.ync.service.SearchService;
import kr.ync.service.SongService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
public class SearchController {

	
	@Autowired
	private SearchService service;
	
	@Autowired
	private ListService list_service;
	
	@Autowired
	private SongService song_service;
	
	
	// 1. 검색 페이지 메소드
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/search")
	public void search(Criteria cri, Model model) {
		
		String type = cri.getType();
		
		model.addAttribute("result" , service.search_list(cri));
		model.addAttribute("type", type);
		model.addAttribute("list", list_service.showList());
		model.addAttribute("random", song_service.front_SongRandom());
		model.addAttribute("ab_random", service.search_AlbumRandom());
		model.addAttribute("at_random", service.search_ArtistRandom());
	
	}
	
}
