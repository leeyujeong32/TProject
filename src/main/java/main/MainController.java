package main;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import cs.NoticeService;
import cs.NoticeVo;
import util.ExchangeRate;

@Controller
public class MainController {
	@Autowired
	NoticeService noticeService;
	
	@Value("${rate.key}")
	private String key;
	
	@GetMapping("/index.do")
	public String main(Model model,NoticeVo vo) {
		List<NoticeVo> list = noticeService.selectNotice(vo);
		
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMDD");
		String date = formatter.format(now);
		
		List<ExChangeRateVo> totalList = ExchangeRate.exchangeRate(date,key);
		System.out.println(date);
		
		model.addAttribute("list",list);
		model.addAttribute("totalList",totalList);
		return "index";
	}
}
