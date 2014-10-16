package com.ujoku.controller;

import com.labillusion.core.util.StopWatch;
import com.labillusion.core.util.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller

public class IndexController {

    @RequestMapping(value="/tool", method = RequestMethod.GET)
    public String printWelcome(ModelMap model) throws Exception {

        return "tool";
    }
}