package io.leedokchidok.boilerplate.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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

	@GetMapping("/main.do")
	public String moveMain() {
		log.info("Controller-moveMain\n메인 도착");
		return "main/main";
	}
}
