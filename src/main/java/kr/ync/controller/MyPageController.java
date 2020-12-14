package kr.ync.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
public class MyPageController {

	@PreAuthorize("hasRole('ROLE_USER')")
	@GetMapping("/myPage")
	public void myPage() {
		
	}
	
}
