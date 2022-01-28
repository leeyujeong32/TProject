package product;

import java.util.List;

import org.springframework.ui.Model;

public interface ProductService {

	List<ProductVo> selectList(ProductVo vo);
	String orderTime(Model model, ProductVo vo);
	ProductVo view(String productid);
	int count(ProductVo vo);
	int delete(ProductVo vo);
	
	
}
