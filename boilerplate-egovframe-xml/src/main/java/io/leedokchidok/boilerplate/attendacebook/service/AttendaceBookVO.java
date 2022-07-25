package io.leedokchidok.boilerplate.attendacebook.service;

import lombok.Getter;
import lombok.NonNull;
import lombok.Setter;

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
public class AttendaceBookVO {

	
	private String abIdx	=	null;		//인덱스
	private String abName	=	null;		//이름
	private String regDate	=	null;		//가입날짜
	private String authId	=	null;		//권한ID
	private String abTotCnt	=	null;		//총 출석수

	private String abDate	=	null;		//출석날짜
	
	private int pageIndex	=	1;			//현재페이지
	private int pageUnit	=	10;			//페이지갯수
	private int pageSize	=	10;			//페이지사이즈
	private int firstIndex	=	1;			//firstIndex
	private int lastIndex	=	1;			//lastIndex
	private int recordCountPerPage	=	10;	//recordCountPerPage

}//AttendaceBookVO
