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
	
	@PreAuthorize("hasRole('ROLE_USER')")
	@GetMapping("/myPage")
	public void myPage(Model model, @RequestParam("id") String id) {
		model.addAttribute("user", service.read(id));
		
	}
	
	@PostMapping("/myPage")
	public String myPage(UserVO user) {
		
		service.pass_update(user);
		return "redirect:/front/myPage";
	}
	
//	@PostMapping("/myPage")
//	public String myPage(@RequestParam("id") String id, @RequestParam("pass") String pass) {
//		
//		service.pass_update(pass, id);
//		return "redirect:/front/myPage";
//	}
	
	
	
}
