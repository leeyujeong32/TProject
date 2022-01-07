package product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

	@Autowired
	ProductServiceImple service;
	
	@GetMapping("/product/index.do")
	public String index(Model model, ProductVo vo) {
		List<ProductVo> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "product/index";
	}

	
}
