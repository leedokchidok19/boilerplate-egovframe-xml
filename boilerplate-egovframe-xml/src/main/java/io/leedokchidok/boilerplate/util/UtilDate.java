package io.leedokchidok.boilerplate.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.*;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class UtilDate {

	public String getCurrentDateTime() {
		// 현재 시간
		LocalDateTime dateTime = LocalDateTime.now();
		// 포맷 정의하기
		String formatDateTime = dateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		return formatDateTime;
	}

	public LocalDate getCurrentDate() {
		// 현재 날짜 구하기 (시스템 시계, 시스템 타임존)
		//LocalDate date = LocalDate.now();
		// 현재 날짜 구하기(Seoul)
		LocalDate seoulDate = LocalDate.now(ZoneId.of("Asia/Seoul"));
		// 현재 날짜 구하기(Paris)
		//LocalDate parisDate = LocalDate.now(ZoneId.of("Europe/Paris"));
		return seoulDate;
	}

	public LocalTime getCurrentTime() {
		// 현재 시간
		LocalTime time = LocalTime.now();
		return time;
	}

	public int getYear() {
		return getCurrentDate().getYear();
	}

	//month : 1~12
	public int getMonth() {
		return getCurrentDate().getMonthValue();
	}

	//day : 1~31
	public int getDay() {
		return getCurrentDate().getDayOfMonth();
	}

	//hour : 1~24
	public int getHour() {
		return getCurrentTime().getHour();
	}

	//minute : 1~60
	public int getMinute() {
		return getCurrentTime().getMinute();
	}

	//second : 1~60
	public int getSecond() {
		return getCurrentTime().getSecond();
	}

	public String getyyyyMMdd() {

		String month = Integer.toString(getMonth());
		month  = Integer.parseInt(month)< 10 ? "0"+month : month;

		String day =  Integer.toString(getDay());
		day  = Integer.parseInt(day) < 10 ? "0"+day : day;

		return  getYear() + month + day;
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
