package user;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserVo {

	private String userid;
	private String pw;
	private String name;
	private String email;
	private String addr1;
	private String addr2;
	private String tel;
	private Timestamp regDate;
	private String zipcode;

	private Timestamp lastLogin;
	
}
