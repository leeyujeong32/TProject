package user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	UserDao userDao;
	
	
	public List<UserVo> selectList(UserVo vo) {
		return userDao.selectList(vo);
	}
	
}
