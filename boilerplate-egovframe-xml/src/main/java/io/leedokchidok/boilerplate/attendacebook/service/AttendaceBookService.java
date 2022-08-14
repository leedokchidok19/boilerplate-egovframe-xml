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
 * @ 2022.07.30			leedokchidok				C.R.U.D 생성
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
	 * 출석부 인원을 등록한다.
	 * @param vo - 등록할 정보가 담긴 AttendaceBookVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	int insertAttendaceBook(AttendaceBookVO vo) throws Exception;

	/**
	 * 출석부 인원 출석일 입력한다.
	 * @param vo - 등록할 정보가 담긴 AttendaceBookVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	int insertAttendaceDate(AttendaceBookVO vo) throws Exception;

	/**
	 * 출석부 인원을 수정한다.
	 * @param vo - 수정할 정보가 담긴 AttendaceBookVO
	 * @return void형
	 * @exception Exception
	 */
	int updateAttendaceBook(AttendaceBookVO vo) throws Exception;

	/**
	 * 출석부 인원을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 AttendaceBookVO
	 * @return void형
	 * @exception Exception
	 */
	void deleteAttendaceBook(AttendaceBookVO vo) throws Exception;

	/**
	 * 출석부 인원을 조회한다.
	 * @param vo - 조회할 정보가 담긴 AttendaceBookVO
	 * @return 조회한 출석부 인원
	 * @exception Exception
	 */
	AttendaceBookVO selectAttendaceBook(AttendaceBookVO vo) throws Exception;

	/**
	 * 출석부 인원 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 AttendaceBookVO
	 * @return 조회한 출석부
	 * @exception Exception
	 */
	List<?> attendaceBookList(AttendaceBookVO searchVO) throws Exception;

	/**
	 * 출석부 총 인원을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 AttendaceBookVO
	 * @return 출석부 총 인원
	 * @exception
	 */
	int selectAttendaceBookListTotCnt(AttendaceBookVO searchVO) throws Exception;

}//AttendaceBookService