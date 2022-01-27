package product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImple {

	@Autowired
	ProductDao dao;

	public List<ProductVo> selectList(ProductVo vo) {
		return dao.selectList(vo);
	}
	
	public ProductVo view(String productid) {
		return dao.selectOne(productid);
	}
	
}
