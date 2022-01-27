package util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class SendMail{
	public static String id;
	public static String pw;
	
	@Value("${mail.id}")
	public void setId(String mailid) {
		id = mailid;
	}
	public String getPw() {
		return pw;
	}
	@Value("${mail.pw}")
	public void setPw(String mailpw) {
		pw = mailpw;
	}
	//매개변수 : 발신자, 수신자, 제목, 내용
	public static void sendMail(String from, String to, String subject, String content) {
		System.out.println(id);
		System.out.println(pw);
		try {
			//메일서버 정보 설정
			Properties prop = System.getProperties();
			prop.put("mail.smtp.host", "smtp.naver.com");
			prop.put("mail.smtp.port", "465");
			prop.put("mail.smtp.auth",  "true");
			prop.put("mail.smtp.ssl.enable", "true"); 
			//prop.put("mail.smtp.ssl.trust", "smtp.naver.com"); // connect안되는 경우 추가
			prop.put("mail.smtp.ssl.protocols", "TLSv1.2"); //에러나는 경우 TLS버전
			
			//세션객체 생성
			Session session = Session.getDefaultInstance(prop, new Authenticator() { //new - : 직접 객체 생성
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(id, pw);
					}
			});
			session.setDebug(true);
			
			//MimeMessage 객체 생성
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress(from));
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
			mimeMessage.setSubject(subject);
			//text로 발송하는 경우
			//mimeMessage.setText(content);
			mimeMessage.setContent(content, "text/html; charset=utf-8");
			
			//메일 전송
			Transport.send(mimeMessage);
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
}
