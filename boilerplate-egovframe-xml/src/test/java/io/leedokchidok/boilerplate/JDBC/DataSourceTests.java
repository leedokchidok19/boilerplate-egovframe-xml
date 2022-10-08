package io.leedokchidok.boilerplate.JDBC;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*
 * JDBC(Java Database Connectivity)는 자바에서 데이터베이스에 접속할 수 있도록 하는 자바 API이다
 * */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/resources/egovframework/spring/context-datasource.xml")
//Java 설정을 사용하는 경우
//@ContextConfiguration(classes = {RootConfig.class})
@Log4j
public class DataSourceTests {

	@Setter(onMethod_ = { @Autowired })
	private DataSource dataSource;

	@Test
	public void testConnection() {

		try (Connection con = dataSource.getConnection()){
			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}//testConnection

}//JDBCTests
