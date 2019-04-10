package com.kh.pickmatch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MessageController {

	@RequestMapping("/alarm/view")
	ModelAndView viewAlarm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/alarm");
		return mv;
	}
}
