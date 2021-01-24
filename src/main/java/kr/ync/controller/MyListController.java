package kr.ync.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.ync.domain.Criteria;
import kr.ync.domain.ListVO;
import kr.ync.service.ListService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
public class MyListController {
	
	@Autowired
	private ListService list_service;
	
	
	// 1. 마이 리스트 페이지 메소드
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
	@GetMapping("/myList")
	public void myList(Model model, @RequestParam("id") String id) {
		
		model.addAttribute("list", list_service.getList(id));
		model.addAttribute("s_list", list_service.showList());
	
	}
	
	// 2. 좋아요 유/무 판단 메소드  
	@RequestMapping(value = "/checkList", method = RequestMethod.POST)
	@ResponseBody
	public String checkList(@RequestBody ListVO list) {

		List<ListVO> count = list_service.checkList2(list);
				
		boolean flag = false;
		int result = 0;
		// List 내 song_idx랑 post로 받은 song_idx랑 비교
		for(ListVO vo : count){
		   if(list.getSong_idx() == vo.getSong_idx()){
		      flag = true;
		   }
		}
		// 있을 경우 삭제 없을경우 넣기
		if(flag){
		   list_service.like_delete(list);
		   result = 1;
		}else{
		   list_service.list_input(list);
		   result = 2;
		}

		Gson gson = new Gson();

		return new Gson().toJson(result);
		
				
	}

	
}
