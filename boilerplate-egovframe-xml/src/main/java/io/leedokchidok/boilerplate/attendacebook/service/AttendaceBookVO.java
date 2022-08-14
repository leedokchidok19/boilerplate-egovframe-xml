package io.leedokchidok.boilerplate.attendacebook.service;

import io.leedokchidok.boilerplate.main.service.MainDefaultVO;
import lombok.Getter;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;

/**
 * @Class Name	:	AttendaceBookVO.java
 * @Description	:	AttendaceBookVO Class
 * @Modification	Information
 * @
 * @	수정일				수정자					수정내용
 * @ ---------		--------------------	-------------------------------
 * @ 2022.07.23			leedokchidok				최초생성
 *
 * @author leedokchidok
 * @since 2022. 07.19
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
@Getter
@Setter
@NonNull//파라미터 값에 NULL이 올 수 없다
@ToString
public class AttendaceBookVO extends MainDefaultVO {

	
	private int abIdx		=	0;			//인덱스
	private String abName	=	null;		//이름
	private String regDate	=	null;		//가입날짜
	private String authId	=	null;		//권한ID
	private String abTotCnt	=	null;		//총 출석수

	private String abDate	=	null;		//출석날짜

	//table 없는 컬럼
	private String abCntMonthOne	=	null;	//이번 달 출석 수
	private String abCntMonthTwo	=	null;	//1개월 전 출석 수

}//AttendaceBookVO
