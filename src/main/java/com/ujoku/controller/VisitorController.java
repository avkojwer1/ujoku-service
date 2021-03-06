package com.ujoku.controller;

import com.labillusion.core.platform.web.rest.RESTController;
import com.labillusion.core.util.UUIDUtils;
import com.ujoku.domain.Visitor;
import com.ujoku.service.VisitorService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;


@RestController
public class VisitorController extends RESTController {

    private final Logger logger = LoggerFactory.getLogger(VisitorController.class);

    @Autowired
    private VisitorService visitorService;


    @RequestMapping(value="/visitor/create", method = RequestMethod.POST)
    @ResponseBody
    public Visitor create(HttpServletRequest request) {

        Visitor visitor = new Visitor();
        visitor.setId(UUIDUtils.create());
        visitor.setUser_agent(request.getHeader("User-Agent"));

        String ipAddress = request.getHeader("X-FORWARDED-FOR");
        if (ipAddress == null) {
            ipAddress = request.getRemoteAddr();
        }
        visitor.setLast_ip(ipAddress);
        visitorService.insert(visitor);

        return visitor;
    }



}