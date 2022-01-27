package user;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import util.SendMail;

@Service
public class UserService {

	@Autowired
	UserDao userDao;
	
	public int insert(UserVo vo) {
		
		return userDao.insert(vo);
	}
	public int idCheck(String userid) {
		return userDao.idCheck(userid);
	}
	public boolean login(UserVo vo, HttpSession sess) {
		UserVo mv = userDao.login(vo);
		if(mv != null) {
			sess.setAttribute("memberInfo", mv);
			return true;
		}
		return false;
	}
	public UserVo searchId(UserVo vo) {
		return userDao.searchId(vo);
	}
	public UserVo searchPwd(UserVo vo,String mailid) {
		UserVo uv = userDao.searchPwd(vo);
		
		if(uv != null) { //임시비밀번호 생성
 			String tempPwd = "";
 			for(int i=0;i<3;i++) {
 				tempPwd += (char)((Math.random()*26)+65);
 			}
 			for(int i=0;i<3;i++) {
 				tempPwd += (int)((Math.random()*9));
 			}
 			
 			vo.setPw(tempPwd);
 			userDao.updateTempPwd(vo);

 			SendMail.sendMail(mailid, uv.getEmail(), "임시비밀번호입니다", "임시비밀번호 : <span style='color:blue;'>"+tempPwd+"</span>");
		}
		return uv;
	}
}
