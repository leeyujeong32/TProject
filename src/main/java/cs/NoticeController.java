package cs;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	
	@GetMapping("/cs/notice.do")
	public String notice(Model model,NoticeVo vo) {
		
		//count는 mapping url이 따로 있으면 안됨
		int totCount = noticeService.count(vo); //총 게시물 수
		int totPage = totCount/10; //총 페이지 수
		if(totCount % 10 > 0) totPage++;
		
		int startIdx = (vo.getPage()-1) * 10; //시작인덱스 구하기
		vo.setStartIdx(startIdx); //vo에 startIdx 넣어주기
		
		List<NoticeVo> list = noticeService.selectList(vo);
		
		model.addAttribute("list",list);
		model.addAttribute("totCount",totCount);
		model.addAttribute("totPage",totPage);
		
		return "cs/notice";
	}
	
	@GetMapping("/cs/write.do")
	public String write() {
		return "cs/write";
	}
	
	@PostMapping("cs/insert.do")
	public String insert(NoticeVo vo, HttpServletRequest req) {
		//vo 안에는 입력받은 값이 들어있다
		int r = noticeService.insert(vo); //데이터가 들어있는 vo를 전달 - r=>등록된 갯수
		System.out.println("r : "+r);
		
		//정상적으로 등록되었습니다. alert
		//insert.do
		if(r > 0) {
			req.setAttribute("msg", "정상적으로 등록되었습니다."); //result.do에 msg와 url을 포워딩
			req.setAttribute("url", "notice.do");
		}else {
			req.setAttribute("msg", "등록 오류"); //result.do에 msg와 url을 포워딩
			req.setAttribute("url", "write.do");
		}
		return "include/return"; //incluse/result.jsp로 리턴
				
	}
	
	@GetMapping("cs/view.do")
	public String detail(@RequestParam int noticeno ,Model model) {
		model.addAttribute("data", noticeService.view(noticeno));
		return "cs/view";
	}
}
