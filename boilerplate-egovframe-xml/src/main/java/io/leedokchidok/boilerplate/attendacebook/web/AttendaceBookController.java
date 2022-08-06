package io.leedokchidok.boilerplate.attendacebook.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.property.EgovPropertyService;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import io.leedokchidok.boilerplate.attendacebook.service.AttendaceBookService;
import io.leedokchidok.boilerplate.attendacebook.service.AttendaceBookVO;
import io.leedokchidok.boilerplate.util.Converter;
import lombok.extern.slf4j.Slf4j;

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
@Slf4j
@Controller
public class AttendaceBookController {

	/** AttendaceBookService */
	@Resource(name = "attendaceBookService")
	private AttendaceBookService attendaceBookService;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@GetMapping("/insertAttendaceBookMember.do")
	public String insertAttendaceBookMember(@ModelAttribute("attendaceBookVO") AttendaceBookVO attendaceBookVO, ModelMap model) throws Exception {

		String msg = "Failed";
		log.info("attendaceBookVO: "+attendaceBookVO);
		int result = attendaceBookService.insertAttendaceBook(attendaceBookVO);

		if(result > 0 ) msg = "Success";

		model.addAttribute("msg", msg);

		return "redirect:/attendaceBook.do";
	}//insertAttendaceBookMember

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

		List<?> attendaceBookList = attendaceBookService.attendaceBookList(searchVO);
		JSONArray attendBookJsonArry = Converter.listToJson(attendaceBookList);
		log.info("attendaceBookList: "+attendaceBookList);

		List<String> nameList			=	new ArrayList<>();	//이름
		List<String> subMonthOneList	=	new ArrayList<>();	//이번 달 출석수
		List<String> subMonthTwoList	=	new ArrayList<>();	//1개월 출석 횟수
		List<String> totCntList			=	new ArrayList<>();	//총 출석수

		int testi = attendBookJsonArry.length();
		
		//조회 정렬과 입력 후 정렬 순서가 맞지 않기 때문에 역순으로 입력
		for(int i = attendBookJsonArry.length(); i > 0; --i) {
			JSONObject abList = attendBookJsonArry.getJSONObject(i-1);
			nameList.add(abList.get("abName").toString());
			subMonthOneList.add(abList.get("abCntMonthOne").toString());
			subMonthTwoList.add(abList.get("abCntMonthTwo").toString());
			totCntList.add(abList.get("abTotCnt").toString());

		}//for

		model.addAttribute("nameList", nameList);
		model.addAttribute("subMonthOne", subMonthOneList);
		model.addAttribute("subMonthTwo", subMonthTwoList);
		model.addAttribute("totCnt", totCntList);

		//int totCnt = attendaceBookService.selectSampleListTotCnt(searchVO);
		//paginationInfo.setTotalRecordCount(totCnt);
		//model.addAttribute("paginationInfo", paginationInfo);

		return "attendacebook/attendacebook";
	}//moveAttendaceBook

}//AttendaceBookController
