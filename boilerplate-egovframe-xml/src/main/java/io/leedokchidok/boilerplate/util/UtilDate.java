package io.leedokchidok.boilerplate.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class UtilDate {
/*
	public String getCurrentDate() {

		//오늘 날짜 정보 조회
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
	}

	public int getNowYear() {
		
		return new Date().getYear();
	}

	public int getDateMonth() {

		return new Date().getMonth();
	}

	public int getDateDay() {

		return new Date().getDay();
	}
*/


	public int getNowYear() {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		return calendar.get(Calendar.YEAR);
	}

	public int getDateMonth() {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		return calendar.get(Calendar.MONTH);
	}

	public int getDateDay() {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		return calendar.get(Calendar.DAY_OF_MONTH);
	}

	public Calendar getyyyyMMddHHmmss() {

		//오늘 날짜 정보 조회e
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		return calendar;
	}

	public String getyyyyMMdd() {

		String month = Integer.toString(getDateMonth());
		month  = Integer.parseInt(month)< 10 ? "0"+month : month;

		String day =  Integer.toString(getDateDay());
		day  = Integer.parseInt(day) < 10 ? "0"+day : day;

		return  getNowYear() + month +  day;
	}// getyyyyMMdd

	public int compareToDay(String inDate) throws ParseException {

		//변환할 날짜
		String yyyyMMdd = inDate;
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");

		//오늘 날짜
		Date nowDate = formatter.parse(getyyyyMMdd());
		//비교할 날짜
		Date compareDate = formatter.parse(yyyyMMdd);

		return  nowDate.compareTo(compareDate);
	}// compareToDay


}//UtilDate
