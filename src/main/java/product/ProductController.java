package product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("/product/detail/detailPage.do")
	public String detail(Model model, ProductVo vo, @RequestParam String productid) {
		model.addAttribute("data", service.view(productid));
		return "product/detail/detailPage";
	}

	
}
