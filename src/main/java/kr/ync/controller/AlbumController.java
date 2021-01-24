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

import kr.ync.domain.AlbumVO;
import kr.ync.domain.ArtistVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.PageDTO;
import kr.ync.service.AlbumService;
import kr.ync.service.ArtistService;
import kr.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
public class AlbumController {
	
	//업로드 패스 
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private AlbumService service;
	
	@Autowired
	private ArtistService artist_service;
	
	// 1. 앨범 관리 페이지 메소드
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/album")
	public void artist(Criteria cri, Model model) {
		log.info("album: " + cri);
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("album" , service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	
	// 2. 앨범 등록 페이지 메소드
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/album_register")
	public void album_register(Model model) {
		
		model.addAttribute("artist", artist_service.getList());
	}
	
	// 3. 앨범 등록 메소드
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/album_register")
	public String album_register(MultipartFile[] uploadFile, AlbumVO album, RedirectAttributes rttr, Model model) {
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			if(multipartFile.getSize() > 0) {
				album.setAlbum_img_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
			}
			index++;
		}
		
		log.info("artist_register: " + album);
		model.addAttribute("artist", artist_service.getList());
		
		service.album_register(album);;
		
		rttr.addFlashAttribute("result", album.getArtist_idx());

		return "redirect:/admin/album";
	}
	
	// 4. 앨범 조회 / 앨범 수정 페이지 메소드
	@GetMapping({ "/album_get", "/album_modify" })
	public void get(@RequestParam("idx") int album_idx, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/album_get or modify");
		model.addAttribute("album", service.get(album_idx));
		model.addAttribute("artist", artist_service.getList());
		
	}
	
	// 5. 앨범 수정 메소드 
	@PostMapping("/album_modify")
	public String modify(MultipartFile[] uploadFile, AlbumVO album, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr
			, Model model) {
		log.info("album_modify:" + album);
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			if(multipartFile.getSize() > 0) {
				album.setAlbum_img_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
			}
			index++;
		}
		model.addAttribute("artist", artist_service.getList());
		service.album_modify(album);
		rttr.addFlashAttribute("result", "success");
		

		return "redirect:/admin/album" + cri.getListLink();
	}
	
	// 6. 앨범 삭제 메소드
	@PostMapping("/album_remove")
	public String remove(@RequestParam("album_idx") int album_idx, Criteria cri, RedirectAttributes rttr, String writer) {

		log.info("remove..." + album_idx);
		if (service.album_remove(album_idx)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/admin/album" + cri.getListLink();
	}

}
