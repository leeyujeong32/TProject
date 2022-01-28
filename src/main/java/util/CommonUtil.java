package util;
import product.ProductVo;

public class CommonUtil {
	public static String getPageArea(ProductVo vo, String url, int curPage, int totPage, int pageRange){//무조건 public
		//페이지범위
		int startPage = (curPage-1)/pageRange*pageRange+1; //시작페이지
		int endPage = startPage + pageRange - 1; //종료페이지
		if(endPage > totPage) endPage = totPage;
				
		
		String ret="";
		ret += "<div class=\"pagenate clear\">\r\n"
				+ "                        <ul class='paging'>\r\n";
		if(startPage > pageRange) {
		      ret +=                           "<li><a href=\""+url+"?page="+(startPage-1)+"\"> < </a>\r\n";
		      }

		for(int rp=startPage;rp<=endPage;rp++) {
			ret += "                            <li><a href='javascript:location.href=\""+url+"?primary_category="+vo.getPrimary_category()+"&orderCond="+vo.getOrderCond()+"&page="+rp+"\";'";
			if (rp == curPage) ret += "class='current'";
			ret += ">"+rp+"</a></li>\r\n";
		}
		if(totPage > endPage) {
				ret += "                   <li><a href=\"index.do?page="+(endPage+1)+"\"> < </a>\r\n";
		}
		ret	 += "                        </ul> \r\n"
				+ "                    </div>";
		return ret;
	}
}
