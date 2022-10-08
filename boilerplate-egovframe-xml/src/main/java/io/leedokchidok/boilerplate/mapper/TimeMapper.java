package io.leedokchidok.boilerplate.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {

	//@Select("SELECT sysdate FROM daul")	//Oracle
	@Select("SELECT NOW()")	//MySQL
	public String getTime();

	public String getTime2();

}
