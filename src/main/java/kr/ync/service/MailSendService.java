package kr.ync.service;

import javax.servlet.http.HttpServletRequest;

public interface MailSendService {
	
	public String init();
	
	public String getKey(boolean lowerCheck, int size);
	
	public void mailSendWithUserKey(String e_mail, String id, HttpServletRequest request);
	
	public int alter_userKey_serice(String id, String user_key);
	
	public void mailSendWithPass(String id, String email, HttpServletRequest request);
	
	public void mailSendWithId(String name, String email, HttpServletRequest request);

}
