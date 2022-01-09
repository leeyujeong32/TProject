package user;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	UserDao userDao;
	
	public int insert(UserVo vo) {
		
		return userDao.insert(vo);
	}

	public boolean login(UserVo vo, HttpSession sess) {
		UserVo mv = userDao.login(vo);
		if(mv != null) {
			sess.setAttribute("memberInfo", mv);
			return true;
		}
		return false;
	}
}
