package cs;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int count(NoticeVo vo) { //공지로 된거 빼고 count
		return sqlSessionTemplate.selectOne("notice.count",vo);
	}
	
	public List<NoticeVo> selectList(NoticeVo vo){
		return sqlSessionTemplate.selectList("notice.selectList",vo);
	}
	
	public int insert(NoticeVo vo) {
		int r = -1;
		try {
			r = sqlSessionTemplate.insert("notice.insert", vo); //namespace.id, 넘겨줄 객체(vo)
		}catch (Exception e) {
			r = 0;
			System.out.println(e.getMessage());
		}
		return r;
	}
	public NoticeVo selectOne(int noticeno) {
		return sqlSessionTemplate.selectOne("notice.selectOne",noticeno);
	}
	

}
