package io.leedokchidok.boilerplate.attendacebook.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.springframework.stereotype.Service;

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
	private AttendaceBookMapper attendaceBookDAO;

	/**
	 * 출석부를 조회한다.
	 * @param vo - 조회할 정보가 담긴 AttendaceBookVO
	 * @return 조회한 출석부
	 * @exception Exception
	 */
	@Override
	public List<?> selectAttendaceBook(AttendaceBookVO vo) throws Exception {
		log.info("DAO-selectAttendaceBook\n출석부 조회");
		return attendaceBookDAO.attendaceBookList(vo);
	}

}//AttendaceBookServiceImpl