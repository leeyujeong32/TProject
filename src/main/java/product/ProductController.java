package product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

	@GetMapping("/product/index.do")
	public String index() {
		return "product/index";
	}
	
}
