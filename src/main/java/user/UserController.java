package user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import product.ProductServiceImple;
import product.ProductVo;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	ProductServiceImple productService;

	@GetMapping("user/login.do")
	public String login() {
		return "user/login";
	}
	@PostMapping("user/login.do")
	public String loginProcess(UserVo uvo, ProductVo pvo, Model model, HttpSession sess) {
		if(userService.login(uvo, sess)) {
			return "redirect:/index.do";
		}
		else {
			model.addAttribute("msg","아이디, 비밀번호를 확인해주세요");
			return "include/return";
		}
	}
	
	@GetMapping("/user/logout.do")
	public String logout(Model model, HttpSession sess) {
		sess.invalidate();
		model.addAttribute("msg","로그아웃되었습니다");
		model.addAttribute("url","/TProject/index.do");//클라이언트에서(자바스크립트)에서 동작하는거기때문에 /project부터 써야함
		return "include/return";
	}
	
	@GetMapping("user/regist.do")
	public String join() {
		return "user/regist";
	}
	@PostMapping("user/insert.do")
	public String insert(UserVo vo, HttpServletRequest req) {
		
		int r = userService.insert(vo);
		if(r > 0) {
			req.setAttribute("msg","정상적으로 가입되었습니다");
			req.setAttribute("url","/TProject/index.do");
		}else {
			req.setAttribute("msg","가입오류");			
		}
		
		return "include/return";
	}
	@GetMapping("user/idCheck.do")
	public String idCheck(Model model, @RequestParam String userid) {
		model.addAttribute("result", userService.idCheck(userid));
		
		return "include/result";
	}
	@GetMapping({"/user/mypage.do"})
	public String mypage() {
		return "user/mypage";
	}
	
	@GetMapping("/user/searchId.do")
	public String searchId() {
		return "user/searchId";
	}
	@PostMapping("/user/searchId.do")
	public String searchId(Model model, UserVo vo) {
		UserVo uv = userService.searchId(vo);
		
		model.addAttribute("result",uv == null ? "":uv.getUserid());
		
		return "include/result";
	}
	@GetMapping("/user/searchPwd.do")
	public String searchPwd() {
		return "user/searchPwd";
	}
	@Value("${mail.email}")
	private String mailid;
	@PostMapping("/user/searchPwd.do")
	public String searchPwd(Model model,UserVo vo) {
		
		UserVo uv = userService.searchPwd(vo,mailid);
	
		model.addAttribute("result", uv==null ? "" : "ok");
		
		return "include/result";
	}
	@GetMapping("/user/checkpw.do")
	public String checkPw() {
		return "user/checkedit";
	}
	@PostMapping("/user/checkpwd.do")
	public String checkPwd(UserVo vo, HttpSession sess, HttpServletRequest req) {
		String userid = ((UserVo)sess.getAttribute("memberInfo")).getUserid();
		vo.setUserid(userid);
		
		int r = userService.pwCheck(vo);
		if(r>0) {
			req.setAttribute("msg", "");
			req.setAttribute("url", "edit.do");
		}
		else {
			req.setAttribute("msg", "비밀번호 불일치");
			req.setAttribute("url", "checkpw.do");
		}
		return "include/return";
	}
	@GetMapping("/user/edit.do")
	public String edit(UserVo vo, HttpSession sess, Model model) {
		String userid = ((UserVo)sess.getAttribute("memberInfo")).getUserid();
		UserVo uv = userService.selectUser(userid);
		
		model.addAttribute("user",uv);
		return "user/edit";
	}
	@PostMapping("/user/update.do")
	public String update(UserVo vo, HttpServletRequest req, HttpSession sess) {
		int r = userService.update(vo);
		
		if(r>0) {
			req.setAttribute("msg", "정상적으로 수정되었습니다."); //result.do에 msg와 url을 포워딩
			req.setAttribute("url", "../product/index.do");
			sess.invalidate();
		}else {
			req.setAttribute("msg", "수정오류"); //result.do에 msg와 url을 포워딩
			req.setAttribute("url", "edit.do");
		}
		return "include/return";
	}
}

