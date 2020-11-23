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
import kr.ync.domain.BoardVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.PageDTO;
import kr.ync.domain.SongVO;
import kr.ync.service.AlbumService;
import kr.ync.service.ArtistService;
import kr.ync.service.SongService;
import kr.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
public class SongController {

	// 업로드 패스
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;

	@Autowired
	private SongService song_service;

	@Autowired
	private AlbumService album_service;

	@Autowired
	private ArtistService artist_service;

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/song")
	public void song(Criteria cri, Model model) {
		log.info("song: " + cri);
		int total = song_service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("song", song_service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

	@PreAuthorize("isAuthenticated()")
	@GetMapping("/song_register")
	public void song_register(Model model) {

		model.addAttribute("artist", artist_service.getList());
		model.addAttribute("album", album_service.getList());
	}

	@GetMapping({ "/song_get", "/song_modify" })
	public void get(@RequestParam("idx") int song_idx, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/song_get or song_modify");
		model.addAttribute("song", song_service.get(song_idx));
		model.addAttribute("album", album_service.getList());
		model.addAttribute("artist", artist_service.getList());

	}

	@PostMapping("/song_modify")
	public String modify(MultipartFile[] uploadFile, SongVO song, @ModelAttribute("cri") Criteria cri,
			RedirectAttributes rttr, Model model) {
		log.info("song_modify:" + song);

		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			if (multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					song.setSong_img_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 1:
					song.setMp3_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				default:
					song.setLyc_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				}
			}
			index++;
		}

		model.addAttribute("album", album_service.getList());
		model.addAttribute("artist", artist_service.getList());
		song_service.song_modify(song);
		rttr.addFlashAttribute("result", "success");

		return "redirect:/admin/song" + cri.getListLink();
	}

	@PreAuthorize("isAuthenticated()")
	@PostMapping("/song_register")
	public String song_register(MultipartFile[] uploadFile, SongVO song, RedirectAttributes rttr) {

		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			if (multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					song.setSong_img_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 1:
					song.setMp3_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				default:
					song.setLyc_path(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				}
			}
			index++;
		}

		log.info("song_register: " + song);

		song_service.song_register(song);

		rttr.addFlashAttribute("result", song.getSong_idx());

		return "redirect:/admin/song";
	}

	@PostMapping("/song_remove")
	public String remove(@RequestParam("song_idx") int song_idx, Criteria cri, RedirectAttributes rttr,
			String writer) {

		log.info("remove..." + song_idx);
		if (song_service.song_remove(song_idx)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/admin/song" + cri.getListLink();
	}

}
