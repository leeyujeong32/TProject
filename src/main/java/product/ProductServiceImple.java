package product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImple {

	@Autowired
	ProductDao dao;

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

	public ProductVo view(String productid) {
		return dao.selectOne(productid);
	}
	
}
