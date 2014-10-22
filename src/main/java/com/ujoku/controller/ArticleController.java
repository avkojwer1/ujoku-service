package com.ujoku.controller;

import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.platform.web.rest.RESTController;
import com.ujoku.domain.Article;
import com.ujoku.domain.Goods;
import com.ujoku.service.ArticleService;
import org.hamcrest.Matchers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

import static ch.lambdaj.Lambda.having;
import static ch.lambdaj.Lambda.on;
import static ch.lambdaj.Lambda.select;


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
        List<Article> list =  service.selectList(null);

        List<Article> result = select(list, having(on(Article.class).getArticle_id(), Matchers.equalTo(id)));

        if(result == null || result.size() == 0)
            throw new ResourceNotFoundException("can not found article by id.");
        return  result.get(0);
    }
}
