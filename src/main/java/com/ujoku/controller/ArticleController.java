package com.ujoku.controller;

import com.labillusion.core.platform.web.rest.RESTController;
import com.ujoku.domain.Article;
import com.ujoku.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


/**
 * Created by greg.chen on 14-10-21.
 */
@RestController
public class ArticleController extends RESTController {

    @Autowired
    public ArticleService service;

    @RequestMapping(value="/article/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Article getArticleById(@PathVariable int id){

        return service.selectById(id);
    }
}
