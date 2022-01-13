package cs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImple implements NoticeService {

	@Autowired
	NoticeDao noticeDao;
	
	@Override
	public int count(NoticeVo vo) {
		return noticeDao.count(vo);
	}
	
	@Override
	public List<NoticeVo> selectList(NoticeVo vo) {
		return noticeDao.selectList(vo);
	}
	
	@Override
	public int insert(NoticeVo vo) {
		return noticeDao.insert(vo);
	}

	@Override
	public NoticeVo view(int noticeno) {
		
		return noticeDao.selectOne(noticeno);
	}
	@Override
	public List<NoticeVo> selectNotice(NoticeVo vo) {
		return noticeDao.selectNotice(vo);
	}

}
