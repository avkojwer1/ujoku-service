package com.ujoku.controller;

import com.ujoku.domain.Client;
import com.ujoku.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller

public class IndexController {

    @Autowired
    private ClientService clientService;

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String Index(ModelMap model) throws Exception {

        List<Client> list = clientService.selectList(null);
        model.put("clientList", list);

        return "index";
    }
}