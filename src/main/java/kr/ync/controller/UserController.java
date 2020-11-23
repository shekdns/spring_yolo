package kr.ync.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import kr.ync.domain.UserVO;
import kr.ync.service.MailSendService;
import kr.ync.service.UserService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
public class UserController {

	@Autowired
	private UserService service;

	@Autowired
	private MailSendService mail_service;

//	@GetMapping("/sign_in")
//	public String sign_in() {
//		return "front/sign_in";
//
//	}

	@GetMapping("/sign_up")
	public String sign_up() {
		return "front/sign_up";

	}

	@PostMapping("/sign_up")
	public String sign_up(UserVO user, Model model, HttpServletRequest request) {

		log.info("user_register: " + user);

		service.user_register(user);
		mail_service.mailSendWithUserKey(user.getEmail(), user.getId(), request);

		return "redirect:/front/sign_in";
	}

	@GetMapping("/key_alter")
	public String key_alter(@RequestParam("id") String id, @RequestParam("user_key") String user_key) {

		mail_service.alter_userKey_serice(id, user_key);
		return "front/regSuccess";
	}

	// id 중복 체크 컨트롤러
	@RequestMapping(value = "sign_up/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public String idCheck(@RequestParam("id") String id) {

		int count = service.userIdCheck(id);
		Gson gson = new Gson();

		return gson.toJson(count);
		// return service.userIdCheck(id);
	}

	@RequestMapping(value = "sign_up/nameCheck", method = RequestMethod.GET)
	@ResponseBody
	public String nameCheck(@RequestParam("name") String name) {

		int count = service.userNameCheck(name);
		Gson gson = new Gson();

		return gson.toJson(count);
		// return service.userIdCheck(id);
	}

	@RequestMapping(value = "sign_up/emailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String eamilCheck(@RequestParam("email") String email) {

		int count = service.userEmailCheck(email);
		Gson gson = new Gson();

		return gson.toJson(count);
		// return service.userIdCheck(id);
	}

	@GetMapping("/find_user")
	public String find_user() {
		return "/front/find_user";
	}
	//비밀번호 찾기
	@RequestMapping(value = "find_user/id_emailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String id_emailCheck(@RequestParam("id") String id, @RequestParam("email") String email) {

		int count = service.find_checkPass(id, email);
		System.out.println(count);
		Gson gson = new Gson();
		
		log.info(count);
		return gson.toJson(count);
		// return service.userIdCheck(id);
	}
	
	
	// 비밀번호 메일 보내기 
	@RequestMapping(value = "find_user/searchPassword", method = RequestMethod.GET)
	@ResponseBody
	public String searchPassword(@RequestParam("id") String id, @RequestParam("email") String email,
			HttpServletRequest request) {
		
		mail_service.mailSendWithPass(id, email, request);

		return "redirect:/front/sign_in";

	}
	
	//아이디 찾기
	@RequestMapping(value = "find_user/name_emailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String name_emailCheck(@RequestParam("name") String name, @RequestParam("email") String email) {

		int count = service.find_checkId(name, email);
		System.out.println(count);
		Gson gson = new Gson();
		
		log.info(count);
		return gson.toJson(count);
		// return service.userIdCheck(id);
	}
	
	//아이디 메일 보내기
	@RequestMapping(value = "find_user/searchId", method = RequestMethod.GET)
	@ResponseBody
	public String searchId(@RequestParam("name") String name, @RequestParam("email") String email,
			HttpServletRequest request) {
		
		mail_service.mailSendWithId(name, email, request);

		return "redirect:/front/sign_in";

	}
	
	//로그인 auth 체크 이건 GET 방식 
	@RequestMapping(value = "sign_in/authCheck", method = RequestMethod.GET)
	@ResponseBody
	public String authCheck(@RequestParam("id") String id ) {
		
		String auth = service.auth_check(id);
		log.info(auth);
		System.out.println(auth);
		Gson gson = new Gson();
		
		return gson.toJson(auth);
		
	}
	
	//로그인 auth 체크 이건 POST 방식
//	@RequestMapping(value = "sign_in/authCheck", method = RequestMethod.POST)
//	@ResponseBody
//	public String authCheck(@RequestParam("id") String id) {
//		
//		String auth = service.auth_check(id);
//		log.info(auth);
//		System.out.println(auth);
//		Gson gson = new Gson();
//		
//		return gson.toJson(auth);
//		
//	}
	
	

}
