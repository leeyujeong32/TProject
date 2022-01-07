package product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

	@Autowired
	ProductServiceImple service;
	
	@GetMapping("/product/index.do")
	public String index() {
		return "product/index";
	}
	
}
