package util;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.*;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Component;

import main.ExChangeRateVo;

@Component
public class ExchangeRate {

	public static List<ExChangeRateVo> exchangeRate(String date,String key){
		
		
		String dataType = "AP01";
		String apiURL = "https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey="+key+"&searchdate="+date+"&data="+dataType;
	
		List<ExChangeRateVo> totalList = new ArrayList<ExChangeRateVo>();

		ExChangeRateVo rv = new ExChangeRateVo();
		try{
			URL url = new URL(apiURL);
			URLConnection conn = url.openConnection();
		
			BufferedReader bf;
			String line = "";
			
			//데이터 받아오기
			bf = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			
			//parser 객체 만들기
			JSONParser parser = new JSONParser();
			
			while((line=bf.readLine()) !=null) {
				
				JSONArray a = (JSONArray)parser.parse(line); //json 데이터를 파싱해서 배열로 추출
				for (int i=0;i<a.size();i++) {
					JSONObject obj = (JSONObject)a.get(i);
					int j=0;
					
					String cur_unit = (String)obj.get("cur_unit");
					String kftc_deal_bas_r = (String)obj.get("kftc_deal_bas_r");
					String cur_nm = (String)obj.get("cur_nm");
					//System.out.println(i);
					if(i==9 || i == 12 || i == 22) {
						ExChangeRateVo ev = new ExChangeRateVo();
						
						ev.setCur_unit(cur_unit);
						ev.setKftc_deal_bas_r(kftc_deal_bas_r);
						ev.setCur_nm(cur_nm);
						
						totalList.add(ev);

						System.out.println(cur_unit+" "+kftc_deal_bas_r+" "+cur_nm);
					}
				}
				
				}
			System.out.println(totalList);
			bf.close();
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}catch(ParseException e) {
			e.printStackTrace();
		}
		
		
		return totalList;
	}
}
