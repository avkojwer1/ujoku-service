package com.ujoku.controller;

import com.labillusion.core.platform.web.rest.RESTController;
import com.labillusion.core.util.UUIDUtils;
import com.ujoku.domain.Client;
import com.ujoku.domain.Visitor;
import com.ujoku.service.ClientService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
public class VisitorController extends RESTController {

    private final Logger logger = LoggerFactory.getLogger(VisitorController.class);
    @Autowired
    private ClientService clientService;

	@RequestMapping(value="/test", method = RequestMethod.GET)
    @ResponseBody
	public String printWelcome(ModelMap model) throws Exception {
        logger.info("asdfasfsaf");
        throw new Exception("我是Y");

	}

    @RequestMapping(value="/visitor/create", method = RequestMethod.POST)
    @ResponseBody
    public Visitor create() {

        Visitor visitor = new Visitor();
        visitor.setId(UUIDUtils.create());

        return visitor;
    }



}