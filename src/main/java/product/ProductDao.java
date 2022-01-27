package product;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {

	@Autowired
	@Resource(name="sqlSessionTemplate2")
	private SqlSessionTemplate sst;

	public List<ProductVo> selectList(ProductVo vo) {
		return sst.selectList("product.selectList", vo);
	}
	
	public ProductVo selectOne(String productid) {
		return sst.selectOne("product.selectOne", productid);
	}
	
}
