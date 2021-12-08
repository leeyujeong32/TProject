package user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

@Controller
public class UserController {

	@Autowired
	Service userService;
	
	int i = 1;
	
}
