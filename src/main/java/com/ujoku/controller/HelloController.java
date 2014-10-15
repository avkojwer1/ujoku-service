package com.ujoku.controller;

import com.labillusion.core.util.StopWatch;
import com.labillusion.core.util.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HelloController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
        StopWatch stopWatch = new StopWatch();
		model.addAttribute("message", "我是啊啊啊啊!" +  StringUtils.hasText("sdafsf") + stopWatch.elapsedTime());

		return "hello";
	}
}