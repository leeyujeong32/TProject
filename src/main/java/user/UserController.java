package user;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@GetMapping("user/login.do")
	public String login() {
		return "user/login";
	}
	@PostMapping("user/login.do")
	public String loginProcess(UserVo vo, Model model, HttpSession sess) {
		if(userService.login(vo, sess)) {
			return "redirect:/index.do";
		}else {
			model.addAttribute("msg","아이디, 비밀번호를 확인해주세요");
			return "include/return";
		}
	}
	
	@GetMapping("user/regist.do")
	public String join() {
		return "user/regist";
	}
	@PostMapping("user/insert.do")
	public String insert(UserVo vo, HttpServletRequest req) {
		
		vo.setAddress(vo.getAddr1()+vo.getAddr2());
		
		int r = userService.insert(vo);
		if(r > 0) {
			req.setAttribute("msg","정상적으로 가입되었습니다");
			req.setAttribute("url","/TProject/index.do");
		}else {
			req.setAttribute("msg","가입오류");			
		}
		
		return "include/return";
	}
	
	@GetMapping({"/user/mypage.do"})
	public String mypage() {
		return "user/mypage";
	}
}

