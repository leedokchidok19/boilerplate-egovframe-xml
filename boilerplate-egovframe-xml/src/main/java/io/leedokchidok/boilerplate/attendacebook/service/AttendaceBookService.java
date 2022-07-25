package io.leedokchidok.boilerplate.attendacebook.service;

import java.util.List;

/**
 * @Class Name	:	AttendaceBookService.java
 * @Description	:	AttendaceBookService Class
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
public interface AttendaceBookService {
	/**
	 * 출석부를 조회한다.
	 * @param vo - 조회할 정보가 담긴 AttendaceBookVO
	 * @return 조회한 출석부
	 * @exception Exception
	 */
	List<?> selectAttendaceBook(AttendaceBookVO vo) throws Exception;

}//AttendaceBookService