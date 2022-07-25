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
 *  == 개정이력(Modification Information) ==
 *
 *	수정일				수정자					수정내용
 * ---------		--------------------	-------------------------------
 * 2022.07.23			leedokchidok				최초생성
 *
 * </pre>
 */
@Mapper("attendaceBookMapper")
public interface AttendaceBookMapper {

	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 SampleVO
	 * @return 등록 결과
	 * @exception Exception
	 */
//	void insertSample(SampleVO vo) throws Exception;

	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 SampleVO
	 * @return void형
	 * @exception Exception
	 */
//	void updateSample(SampleVO vo) throws Exception;

	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 SampleVO
	 * @return void형
	 * @exception Exception
	 */
//	void deleteSample(SampleVO vo) throws Exception;

	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
//	SampleVO selectSample(SampleVO vo) throws Exception;

	/**
	 * 글 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	List<?> attendaceBookList(AttendaceBookVO searchVO) throws Exception;

	/**
	 * 글 총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
//	int selectSampleListTotCnt(SampleDefaultVO searchVO);

}//AttendaceBookMapper
