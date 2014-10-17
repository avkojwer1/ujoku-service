package com.ujoku.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class IndexController {

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String Index(ModelMap model) throws Exception {

        return "index";
    }
}