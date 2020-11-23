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

import kr.ync.domain.ArtistVO;
import kr.ync.domain.BoardVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.PageDTO;
import kr.ync.service.ArtistService;
import kr.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
public class ArtistController {
	
	//업로드 패스 
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private ArtistService service;
	
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/artist")
	public void artist(Criteria cri, Model model) {
		log.info("artist: " + cri);
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("artist" , service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
	}
	
	@GetMapping("/artist_register")
	@PreAuthorize("isAuthenticated()")
	public void artist_register() {

	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/artist_register")
	public String artist_register(MultipartFile[] uploadFile, ArtistVO artist, RedirectAttributes rttr) {
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			if(multipartFile.getSize() > 0) {
				artist.setArtist_img_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
			}
			index++;
		}
		
		log.info("artist_register: " + artist);

		service.artist_register(artist);;

		rttr.addFlashAttribute("result", artist.getArtist_idx());

		return "redirect:/admin/artist";
	}
	
	
	@GetMapping({ "/artist_get", "/artist_modify" })
	public void get(@RequestParam("idx") int artist_idx, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/artist_get or modify");
		model.addAttribute("artist", service.get(artist_idx));
	}
	
	@PostMapping("/artist_modify")
	public String modify(MultipartFile[] uploadFile, ArtistVO artist, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("artist_modify:" + artist);
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			if(multipartFile.getSize() > 0) {
				artist.setArtist_img_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
			}
			index++;
		}

		service.artist_modify(artist);
		rttr.addFlashAttribute("result", "success");
		

		return "redirect:/admin/artist" + cri.getListLink();
	}
	
	@PostMapping("/artist_remove")
	public String remove(@RequestParam("artist_idx") int artist_idx, Criteria cri, RedirectAttributes rttr, String writer) {

		log.info("remove..." + artist_idx);
		if (service.artist_remove(artist_idx)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/admin/artist" + cri.getListLink();
	}
	
	
	
}
