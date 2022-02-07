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
	
	public int count(ProductVo vo) {
		return sst.selectOne("product.count",vo);
	}
	
	public ProductVo category(String primary_category) {
		return sst.selectOne("product.category", primary_category);
	}
	public int delete(String productid) {
		return sst.delete("product.delete", productid);
	}
	public List<ProductVo> selectAll(ProductVo vo) {
		return sst.selectList("product.selectAll",vo);
	}
	
}
