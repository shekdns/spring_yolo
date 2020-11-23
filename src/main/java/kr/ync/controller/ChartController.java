package kr.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.domain.ChartVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.PageDTO;
import kr.ync.service.ChartService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
public class ChartController {
	
	@Autowired
	private ChartService service;
	
	@GetMapping("/upload")
	public String upload(RedirectAttributes rttr) {
		log.info("upload success");
		
		service.uploadDB();
		rttr.addFlashAttribute("result", "success");
		return "redirect:/admin/chart";
	}
	
	@GetMapping("/update")
	public String update(RedirectAttributes rttr) {
		log.info("update success ");
		
		service.updateDB();
		rttr.addFlashAttribute("result", "success");
		return "redirect:/admin/chart";
	}
	
	@GetMapping("/clear")
	public String clear(RedirectAttributes rttr) {
		
		log.info("clear success");
		
		service.clearDB();
		rttr.addFlashAttribute("result", "success");
		return "redirect:/admin/chart";
		
	}
	//@RequestParam(value = "gnrcode" , required = false, defaultValue = "1") int gnrcode
	//@RequestParam("gnrcode") int gnrcode
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/chart")
	public void chart(Criteria cri, Model model, @RequestParam(value = "gnrcode" , required = false, defaultValue = "1") int gnrcode) {
		cri = new Criteria(cri.getPageNum(), cri.getAmount(), gnrcode);
		log.info("chart: " + cri);
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("chart" , service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
	}
	
	
	//원래 것
//	@PreAuthorize("hasRole('ROLE_ADMIN')")
//	@GetMapping("/chart")
//	public void chart(Criteria cri, Model model) {
//		log.info("chart: " + cri);
//		int total = service.getTotal(cri);
//		log.info("total: " + total);
//		model.addAttribute("chart" , service.getListWithPaging(cri));
//		model.addAttribute("pageMaker", new PageDTO(cri, total));
//		
//	}
	

	
	
	
}
