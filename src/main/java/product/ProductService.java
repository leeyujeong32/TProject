package product;

import org.springframework.ui.Model;

public interface ProductService {

	String selectList(Model model, ProductVo vo);
}
