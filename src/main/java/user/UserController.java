package user;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	
	@GetMapping({"/board/index.do"})
	public String index(Model model, UserVo vo) {
		
		List<UserVo> list = userService.selectList(vo);
		model.addAttribute("list", list);
		return "user/index";
	}
	
}
