package io.leedokchidok.boilerplate.JDBC;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

/*
 * JDBC(Java Database Connectivity)는 자바에서 데이터베이스에 접속할 수 있도록 하는 자바 API이다
 * */
@Log4j
public class JDBCConnection {

	static {
		try {
			Class.forName("net.sf.log4jdbc.DriverSpy");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//static

	@Test
	public void testConnection() {

		//DB schema
		String schema	= "DB_Schema";	//스키마
		String username	= "ex_username";//유저명
		String password	= "ex_password";//비밀번호

		try (Connection con =
				DriverManager.getConnection(//mysql 연결 : DB_Schema/ex_username/ex_password
						"jdbc:log4jdbc:mysql://127.0.0.1:3306/"+schema+"?serverTimezone=UTC&useSSL=false",
						username,
						password)){
			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}//testConnection

}//JDBCTests
