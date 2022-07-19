package io.leedokchidok.boilerplate.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/main.do")
	public String name() {
		System.out.println("메인 도착!");
		return "main/main";
	}
}
