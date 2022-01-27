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
	public int idCheck(String userid) {
		return sst.selectOne("user.idCheck",userid);
	}
	public UserVo login(UserVo vo) {
		return sst.selectOne("user.login",vo);
	}
	
	public UserVo searchId(UserVo vo) {
		return sst.selectOne("user.searchId",vo);
	}
	public UserVo searchPwd(UserVo vo) {
		return sst.selectOne("user.searchPwd",vo);
	}
	public int updateTempPwd(UserVo vo) {
		return sst.update("user.updateTempPwd",vo);
	}

}
