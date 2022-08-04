package io.leedokchidok.boilerplate.example.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

/**
 * @Class Name	:	ExampleController.java
 * @Description	:	ExampleController Class
 * @Modification	Information
 * @
 * @	수정일				수정자					수정내용
 * @ ---------		--------------------	-------------------------------
 * @ 2022.08.04			leedokchidok				최초생성
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
public class ExampleController {

	@GetMapping("/example/apacheechart/basicbar.do")
	public String moveApacheEchartsBar() {
		log.info("Controller-moveApacheEcharts\nApache Echarts Bar");
		return "chart/apacheecharts/basicbar";
	}

}//ExampleController
