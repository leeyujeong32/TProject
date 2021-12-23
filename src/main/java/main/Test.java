package main;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

import com.ebay.api.client.auth.oauth2.CredentialUtil;

public class Test {

	public static void main(String[] args) {
		try {
			CredentialUtil.load(new FileInputStream("/TProject/src/main/resources/config/spring-config.xml"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		

	}

}
