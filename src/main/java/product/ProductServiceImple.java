package product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImple implements ProductService{

	@Autowired
	ProductDao dao;

	@Override
	public List<ProductVo> selectList(ProductVo vo) {
		List<ProductVo> list = dao.selectList(vo);
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getTimeleft() >= 24)
				list.get(i).setTimeleft_str(String.valueOf(list.get(i).getTimeleft()/24) + " days");
			else
				list.get(i).setTimeleft_str(String.valueOf(list.get(i).getTimeleft()) + " hrs");
		}
		return list;
	}
	@Override
	public ProductVo view(String productid) {
		return dao.selectOne(productid);
	}
	@Override
	public int count(ProductVo vo) {
		return dao.count(vo);
	}
//	@Override
//	public ProductVo category(String primary_category) {
//		return dao.selectOne(primary_category);
//	}
	
//	public int delete(ProductVo vo) {
//		return dao.
//	}
}
