package io.leedokchidok.boilerplate.attendacebook.service.impl;

import java.util.List;

import io.leedokchidok.boilerplate.attendacebook.service.AttendaceBookVO;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

/**
 * AttendaceBook에 관한 데이터처리 매퍼 클래스
 *
 * @author  leedokchidok
 * @since 2022.07.19
 * @version 1.0
 * @see <pre>
 *	== 개정이력(Modification Information) ==
 *
 *	수정일				수정자					수정내용
 * ---------		--------------------	-------------------------------
 * 2022.07.23			leedokchidok				최초생성
 * 2022.07.30			leedokchidok				C.R.U.D 생성
 *
 * </pre>
 */
@Mapper("attendaceBookMapper")
public interface AttendaceBookMapper {

	/**
	 * 출석부 인원을 등록한다.
	 * @param vo - 등록할 정보가 담긴 AttendaceBookVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	void insertAttendaceBook(AttendaceBookVO vo) throws Exception;

	/**
	 * 출석부 인원을 수정한다.
	 * @param vo - 수정할 정보가 담긴 AttendaceBookVO
	 * @return void형
	 * @exception Exception
	 */
	void updateAttendaceBook(AttendaceBookVO vo) throws Exception;

	/**
	 * 출석부 인원을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 AttendaceBookVO
	 * @return void형
	 * @exception Exception
	 */
	void deleteAttendaceBook(AttendaceBookVO vo) throws Exception;

	/**
	 * 출석부 인원을 상세 조회한다.
	 * @param vo - 조회할 정보가 담긴 AttendaceBookVO
	 * @return 조회한 출석부 인원
	 * @exception Exception
	 */
	AttendaceBookVO selectAttendaceBook(AttendaceBookVO vo) throws Exception;

	/**
	 * 출석부 인원 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 AttendaceBookVO
	 * @return 출석부 인원 목록
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

}//AttendaceBookMapper
