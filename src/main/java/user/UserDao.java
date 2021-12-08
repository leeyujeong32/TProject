package user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	SqlSessionTemplate sst;

	public List<UserVo> selectList(UserVo vo) {
		return sst.selectList("user.selectList", vo);
	}

}
