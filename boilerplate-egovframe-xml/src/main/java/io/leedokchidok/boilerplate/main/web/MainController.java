package io.leedokchidok.boilerplate.main.web;


import java.text.SimpleDateFormat;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;

import lombok.extern.slf4j.Slf4j;

/**
 * @Class Name	:	MainController.java
 * @Description	:	MainController Class
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
public class MainController {

	@InitBinder//날짜 변환
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, false));
	}

	//VO의 dueDate로 대체 가능
	
	@GetMapping("/main.do")
	public String moveMain() {
		log.info("Controller-moveMain\n메인");
		return "main/main";
	}

	@GetMapping("/login.do")
	public String moveLogin() {
		log.info("Controller-moveLogin\n로그인");
		return "main/login";
	}

}//MainController
