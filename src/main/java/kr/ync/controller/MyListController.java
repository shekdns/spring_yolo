package kr.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ync.domain.ListVO;
import kr.ync.service.ListService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
public class MyListController {
	
	@Autowired
	private ListService list_service;
	
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/myList")
	public void myList() {
		

	}
	
//	@RequestMapping(value = "/input_list", method = RequestMethod.GET)
//	@ResponseBody
//	public String input_list(@RequestParam("id") String id, @RequestParam("song_idx") int song_idx, 
//			@RequestParam("album_idx") int album_idx) {
//		
//		//좋아요 -> 마이리스트 
//		list_service.list_like(id, song_idx, album_idx);
//		
//		
//		return "redirect:/";  
//	}
	

	@RequestMapping(value = "/input_list", method = RequestMethod.POST )
	@ResponseBody
	public String input_list(@RequestBody ListVO list) {
		
		String msg = "";
		
		int result = list_service.list_input(list);
		
		if(result > 0 ) {
			msg = "성공";
			log.info(msg);
		}else {
			msg = "실패";
			log.info(msg);
		}
		
		return "redirect:/";  
	}
	
}
