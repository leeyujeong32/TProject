package product;

import java.util.List;

import org.springframework.ui.Model;

public interface ProductService {

	List<ProductVo> selectList(ProductVo vo);
	ProductVo view(String itemid);
	int count(ProductVo vo);
	int delete(String productid);
	List<ProductVo> selectAll(ProductVo vo);
	
}
