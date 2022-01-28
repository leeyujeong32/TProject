package product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import util.CommonUtil;

@Controller
public class ProductController {

	@Autowired
	ProductServiceImple service;
	
	@GetMapping("/product/index.do")
	public String index(Model model, ProductVo vo, HttpServletRequest request) {
		
		String category = request.getParameter("primary_category");
		if(category != null) 
			vo.setPrimary_category(category);
		else
			vo.setPrimary_category("");
		
		String orderCondition = request.getParameter("orderCond");
		if(orderCondition != null) 
			vo.setOrderCond(orderCondition);
		else
			vo.setOrderCond("");
		int totCount = service.count(vo);
		int totPage = totCount/20;
		if(totCount % 20 > 0) totPage++;
		
		int startIdx = (vo.getPage()-1)*20;
		vo.setStartIdx(startIdx);
		
		List<ProductVo> list = service.selectList(vo);
		model.addAttribute("category", vo.getPrimary_category());
		model.addAttribute("list", list);
		
		model.addAttribute("totCount",totCount);
		model.addAttribute("totPage",totPage);
		model.addAttribute("pageArea",CommonUtil.getPageArea(vo, "index.do", vo.getPage(), totPage, 20));
		
		return "product/index";
	}
	
	@GetMapping("/product/detail/detailPage.do")
	public String detail(Model model, ProductVo vo, @RequestParam String productid) {
		model.addAttribute("data", service.view(productid));
		return "product/detail/detailPage";
	}

	
}
