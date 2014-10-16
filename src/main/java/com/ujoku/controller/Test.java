package com.ujoku.controller;

import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.platform.web.rest.RESTController;
import com.labillusion.core.util.StopWatch;
import com.labillusion.core.util.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class Test extends RESTController {

    private final Logger logger = LoggerFactory.getLogger(Test.class);

	@RequestMapping(value="/test", method = RequestMethod.GET)
    @ResponseBody
	public String printWelcome(ModelMap model) throws Exception {
        logger.info("asdfasfsaf");
        throw new Exception("我是Y");

	}


}