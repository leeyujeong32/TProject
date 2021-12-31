package cs;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import util.CommonVo;

@Getter
@Setter
public class NoticeVo extends CommonVo{
	
	private int noticeno;
	private String title;
	private String content;
	private Timestamp regdate;
	private int note;
}
