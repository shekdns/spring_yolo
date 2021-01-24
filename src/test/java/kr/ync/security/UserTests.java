package kr.ync.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
public class UserTests {
	
	@Autowired
	private PasswordEncoder pwencoder;

	@Autowired
	private DataSource ds;

	@Test
	public void testInsertUser() {

		String sql = "insert into member(id, pass, name, email, auth) values (?,?,?,?,?)";

		for (int i = 1; i < 4; i++) {

			Connection con = null;
			PreparedStatement pstmt = null;

			try {
				con = ds.getConnection();
				pstmt = con.prepareStatement(sql);

				pstmt.setString(2, pwencoder.encode("pass" + i));

					pstmt.setString(1, "user" + i);
					pstmt.setString(3, "유저" + i);
					pstmt.setString(4, "user"+i+"@naver.com");
					pstmt.setString(5, "ROLE_USER");

				

				pstmt.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (pstmt != null) {
					try {
						pstmt.close();
					} catch (Exception e) {
					}
				}
				if (con != null) {
					try {
						con.close();
					} catch (Exception e) {
					}
				}

			}

	}
	
}
}
