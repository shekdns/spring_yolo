package kr.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.domain.UserVO;
import kr.ync.service.UserService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
public class MyPageController {
	
	
	@Autowired
	private UserService service;
	
	// 1. 마이 페이지 메소드
	@PreAuthorize("hasRole('ROLE_USER')")
	@GetMapping("/myPage")
	public void myPage(Model model, @RequestParam("id") String id) {
		model.addAttribute("user", service.read(id));
		
	}
	
	// 2. 마이 페이지 비밀번호 수정 메소드
	@PostMapping("/myPage")
	public String myPage(UserVO user) {
		
		service.pass_update(user);
		return "redirect:/front/myPage";
	}
		
	
}
