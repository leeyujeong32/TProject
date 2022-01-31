package product;

import java.sql.Timestamp;
import java.util.concurrent.TimeUnit;
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
		Long datetime = System.currentTimeMillis();
        Timestamp now = new Timestamp(datetime);
        long diff;
        long hours;
        for (int i = 0; i < list.size(); i++) {
        	diff = list.get(i).getEndtime().getTime()-now.getTime();
        	hours = TimeUnit.MILLISECONDS.toMinutes(diff)/60; 
        	list.get(i).setTimeleft(hours);
			if (list.get(i).getTimeleft() >= 60)
				list.get(i).setTimeleft_str(String.valueOf((list.get(i).getTimeleft())/24) + " days");
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

	@Override
	public int delete(String productid) {
		return dao.delete(productid);
	}
}
