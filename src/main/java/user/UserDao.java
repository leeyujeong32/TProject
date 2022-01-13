package user;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	@Autowired
	@Resource(name="sqlSessionTemplate1")
	SqlSessionTemplate sst;

	public int insert(UserVo vo) {
		return sst.insert("user.insert",vo);
	}
	
	public UserVo login(UserVo vo) {
		return sst.selectOne("user.selectOne",vo);
	}

}
