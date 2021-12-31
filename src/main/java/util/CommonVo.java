package util;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommonVo {
	private String searchType;
	private String searchWord;
	private String orderCond;
	private int startIdx; //parameter는 아니지만 모든 vo에 필요하기 때문에 여기에 입력 - limit 시작값
	private int page; //사용자가 요청한 페이지
	
	public CommonVo() { //생성자
		//controller에서 BoardVo가 요청되는 순간 ->  page=1로 됨
		page = 1; //사용자가 요청했는데 0페이지일 순 없으니까 1로 초기화
		
	}
//	public String getSearchWord() {
//		return this.searchWord.toUpperCase();
//	}
	
}
