package cs;

import java.util.List;

public interface NoticeService {
	
	int count(NoticeVo vo);
	List<NoticeVo> selectList(NoticeVo vo);
	int insert(NoticeVo vo);
	NoticeVo view(int noticeno);
	List<NoticeVo> selectNotice(NoticeVo vo);
}
