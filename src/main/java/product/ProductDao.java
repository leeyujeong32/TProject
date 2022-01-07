package product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {

	@Autowired
	private SqlSessionTemplate sst;

	public List<ProductVo> selectList(ProductVo vo) {
		return sst.selectList("product.selectList", vo);
	}
	
	
}
