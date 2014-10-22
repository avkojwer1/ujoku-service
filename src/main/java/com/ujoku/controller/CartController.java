package com.ujoku.controller;

import com.labillusion.core.platform.web.rest.RESTController;
import com.ujoku.domain.Article;
import com.ujoku.domain.Cart;
import com.ujoku.service.ArticleService;
import com.ujoku.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


/**
 * Created by greg.chen on 14-10-21.
 */
@RestController
public class CartController extends RESTController {

    @Autowired
    public CartService service;

    @RequestMapping(value="/shoppingCart", method = RequestMethod.POST)
    @ResponseBody
    public Cart shoppingCart(){

       return null;
    }
}
