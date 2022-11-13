package io.leedokchidok.boilerplate.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;


import lombok.extern.log4j.Log4j;

/**
 * @Class Name	:	CommonExceptionAdvice.java
 * @Description	:	CommonExceptionAdvice Class
 * @Modification	Information
 * @
 * @	수정일				수정자					수정내용
 * @ ---------		--------------------	-------------------------------
 * @ 2022.11.13			leedokchidok				최초생성
 *
 * @author leedokchidok
 * @since 2022. 07.19
 * @version 1.0
 * @see
 *
 *	예외 처리를 목적으로 생성하는 클래스이므로 별도의 로직 처리하지 않는다.
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
@ControllerAdvice//AOP(Aspect-Oriented-Programming) 이용 방식
@Log4j
public class CommonExceptionAdvice {

	@ExceptionHandler(Exception.class) // 해당 메소드가 () 들어가는 예외 타입을 처리한다.
	public String except(Exception ex, Model model) {
		log.error("Exception..."+ex.getMessage());
		model.addAttribute("exception", ex);
		log.error(model);
		return "exception/error_page";
	}
}
