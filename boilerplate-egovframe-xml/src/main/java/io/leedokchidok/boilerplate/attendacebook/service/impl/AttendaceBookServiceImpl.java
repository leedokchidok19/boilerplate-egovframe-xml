package io.leedokchidok.boilerplate.attendacebook.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.springframework.stereotype.Service;

import io.leedokchidok.boilerplate.attendacebook.mapper.AttendaceBookMapper;
import io.leedokchidok.boilerplate.attendacebook.service.AttendaceBookService;
import io.leedokchidok.boilerplate.attendacebook.service.AttendaceBookVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @Class Name	:	AttendaceBookServiceImpl.java
 * @Description	:	AttendaceBookServiceImpl Class
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
@Slf4j
@Service("attendaceBookService")
public class AttendaceBookServiceImpl extends EgovAbstractServiceImpl implements AttendaceBookService {

	/** SampleDAO */
	// TODO ibatis 사용
//	@Resource(name = "attendaceBookDAO")
//	private AttendaceBookDAO attendaceBookDAO;

	@Resource(name="attendaceBookMapper")
	private AttendaceBookMapper attendaceBookMapper;

	@Override
	public int insertAttendaceBook(AttendaceBookVO vo) throws Exception {
		log.info("impl-insertAttendaceBook\n출석부 인원 등록");
		return attendaceBookMapper.insertAttendaceBook(vo);
	}

	@Override
	public int insertAttendaceDate(AttendaceBookVO vo) throws Exception {
		log.info("impl-insertAttendaceDate\n출석부 인원 출석일 등록");
		return attendaceBookMapper.insertAttendaceDate(vo);
	}

	@Override
	public int updateAttendaceBook(AttendaceBookVO vo) throws Exception {
		log.info("impl-updateAttendaceBook\n출석부 인원 수정");
		return attendaceBookMapper.updateAttendaceBook(vo);
	}

	@Override
	public void deleteAttendaceBook(AttendaceBookVO vo) throws Exception {
		log.info("impl-deleteAttendaceBook\n출석부 인원 삭제");
		attendaceBookMapper.deleteAttendaceBook(vo);
	}

	@Override
	public AttendaceBookVO selectAttendaceBook(AttendaceBookVO vo) throws Exception {
		log.info("impl-selectAttendaceBook\n출석부 인원 상세 조회");
		return attendaceBookMapper.selectAttendaceBook(vo);
	}

	@Override
	public List<?> attendaceBookList(AttendaceBookVO searchVO) throws Exception {
		log.info("impl-attendaceBookList\n출석부 목록 조회");
		return attendaceBookMapper.attendaceBookList(searchVO);
	}

	@Override
	public int selectAttendaceBookListTotCnt(AttendaceBookVO searchVO) throws Exception {
		log.info("impl-selectAttendaceBookListTotCnt\n출석부 총 인원");
		return attendaceBookMapper.selectAttendaceBookListTotCnt(searchVO);
	}

}//AttendaceBookServiceImpl