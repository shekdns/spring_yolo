package kr.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import kr.ync.domain.ArtistMemberVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.PageDTO;
import kr.ync.service.ArtistMemberService;
import kr.ync.service.ArtistService;
import kr.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/admin/*")
public class ArtistMemberController {

	
	//업로드 패스 
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private ArtistMemberService service;
	
	@Autowired
	private ArtistService artist_service;
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/artist_member")
	public void artist_member(Criteria cri, Model model) {
		log.info("artist: " + cri);
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("artist_member" , service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
	}

	
	@GetMapping("/artist_member_register")
	@PreAuthorize("isAuthenticated()")
	public void artist_member_register(Model model) {
		model.addAttribute("artist", artist_service.getList());
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/artist_member_register")
	public String artist_member_register(MultipartFile[] uploadFile, ArtistMemberVO artist_member, RedirectAttributes rttr, Model model) {
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			if(multipartFile.getSize() > 0) {
				artist_member.setImg_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
			}
			index++;
		}
		
		log.info("artist_member: " + artist_member);
		
		model.addAttribute("artist", artist_service.getList());
		service.artist_member_register(artist_member);

		rttr.addFlashAttribute("result", artist_member.getArtist_member_idx());

		return "redirect:/admin/artist_member";
	}
	
	
	@GetMapping({ "/artist_member_get", "/artist_member_modify" })
	public void get(@RequestParam("idx") int artist_member_idx , @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/artist_member_get or modify");
		model.addAttribute("artist_member", service.get(artist_member_idx));
		model.addAttribute("artist", artist_service.getList());
		
	}
	
	@PostMapping("/artist_member_modify")
	public String modify(MultipartFile[] uploadFile, ArtistMemberVO amv, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr
			, Model model) {
		log.info("artist_member_modify:" + amv);
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			if(multipartFile.getSize() > 0) {
				amv.setImg_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
			}
			index++;
		}
		model.addAttribute("artist", artist_service.getList());
		service.artist_member_modify(amv);
		rttr.addFlashAttribute("result", "success");
		

		return "redirect:/admin/artist_member" + cri.getListLink();
	}
	
	@PostMapping("/artist_member_remove")
	public String remove(@RequestParam("artist_member_idx") int artist_member_idx, Criteria cri, RedirectAttributes rttr) {

		log.info("remove..." + artist_member_idx);
		if (service.artist_member_remove(artist_member_idx)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/admin/artist_member" + cri.getListLink();
	}
	
}
