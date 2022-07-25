package io.leedokchidok.boilerplate.attendacebook.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.EgovAbstractDAO;
import org.springframework.stereotype.Repository;

import io.leedokchidok.boilerplate.attendacebook.service.AttendaceBookVO;
import lombok.extern.slf4j.Slf4j;


/**
 * @Class Name	:	AttendaceBookDAO.java
 * @Description	:	AttendaceBookDAO Class
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
@Repository("attendaceBookDAO")
public class AttendaceBookDAO extends EgovAbstractDAO {

	/**
	 * 출석부 목록을 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 출석부 목록
	 * @exception Exception
	 */
	public List<?> attendaceBookList(AttendaceBookVO searchVO) throws Exception {
		log.info("DAO-attendaceBookList\n출석부 조회");
		return list("attendaceBookDAO.attendaceBookList", searchVO);
	}

}//AttendaceBookDAO
