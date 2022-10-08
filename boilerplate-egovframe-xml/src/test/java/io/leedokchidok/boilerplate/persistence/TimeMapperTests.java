package io.leedokchidok.boilerplate.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import io.leedokchidok.boilerplate.mapper.TimeMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/resources/egovframework/spring/context-datasource.xml")
//Java 설정을 사용하는 경우
//@ContextConfiguration(classes = {RootConfig.class})
@Log4j
public class TimeMapperTests {

	@Setter(onMethod_ = { @Autowired })
	private TimeMapper timeMapper;

	@Test
	public void testGetTime() {
		log.info(timeMapper.getClass().getName());
		log.info(timeMapper.getTime());
	}
/*
	@Test
	public void testGetTime2() {
		log.info("testGetTime2");
		log.info(timeMapper.getTime2());
	}
*/
}
