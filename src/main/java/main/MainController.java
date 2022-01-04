package main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import cs.NoticeService;
import cs.NoticeVo;

@Controller
public class MainController {
	
	@Autowired
	NoticeService noticeService;
	
	@GetMapping("/index.do")
	public String main(Model model,NoticeVo vo) {
		List<NoticeVo> list = noticeService.selectNotice(vo);
		
		model.addAttribute("list",list);
		return "index";
	}
}
