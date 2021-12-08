package user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	@Autowired
	SqlSessionTemplate sst;

	public List<UserVo> selectList(UserVo vo) {
		return sst.selectList("user.selectList", vo);
	}

}
