package product;

import org.springframework.ui.Model;

public interface ProductService {

	String selectList(Model model, ProductVo vo);
	String orderTime(Model model, ProductVo vo);
	ProductVo view(String productid);
	int count(ProductVo vo);
	
	
}
