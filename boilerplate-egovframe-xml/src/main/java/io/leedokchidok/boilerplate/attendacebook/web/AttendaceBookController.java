package io.leedokchidok.boilerplate.attendacebook.web;

import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.property.EgovPropertyService;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import io.leedokchidok.boilerplate.attendacebook.service.AttendaceBookService;
import io.leedokchidok.boilerplate.attendacebook.service.AttendaceBookVO;

/**
 * @Class Name	:	AttendaceBookController.java
 * @Description	:	AttendaceBookController Class
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
@Controller
public class AttendaceBookController {

	/** AttendaceBookService */
	@Resource(name = "attendaceBookService")
	private AttendaceBookService attendaceBookService;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@GetMapping("/attendaceBook.do")
	public String moveAttendaceBook(@ModelAttribute("searchVO") AttendaceBookVO searchVO, ModelMap model) throws Exception {

		/** EgovPropertyService.sample */
		searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
		searchVO.setPageSize(propertiesService.getInt("pageSize"));

		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());

		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

//		List<?> sampleList = attendaceBookService.selectAttendaceBook(searchVO);
//		model.addAttribute("resultList", sampleList);

		//int totCnt = attendaceBookService.selectSampleListTotCnt(searchVO);
		//paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "attendacebook/attendacebook";
	}//moveAttendaceBook

}//AttendaceBookController
