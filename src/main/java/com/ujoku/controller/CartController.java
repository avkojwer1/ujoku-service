package com.ujoku.controller;

import com.labillusion.core.platform.exception.UserAuthorizationException;
import com.labillusion.core.platform.web.listener.SessionCollect;
import com.labillusion.core.platform.web.rest.RESTController;
import com.ujoku.domain.Cart;
import com.ujoku.domain.Member;
import com.ujoku.interceptor.LoginRequired;
import com.ujoku.service.CartService;
import com.ujoku.view.domain.ShoppingCartView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Created by greg.chen on 14-10-21.
 */
@RestController
public class CartController extends RESTController {

    @Autowired
    public CartService service;

    @RequestMapping(value="/shoppingCart", method = RequestMethod.POST)
    @ResponseBody
    @LoginRequired
    public ShoppingCartView shoppingCart(HttpServletRequest request) {
        HttpSession session = SessionCollect.find(request);
        Member member = (Member) session.getAttribute("Member");

        Map<String, Object> query = new HashMap<String, Object>();
        query.put("user_id", member.getUser_id());

        ShoppingCartView view = new ShoppingCartView(service.selectList(query));

        return view;
    }

    @RequestMapping(value="/cart/add", method = RequestMethod.POST)
    @ResponseBody
    @LoginRequired
    public Cart add(){


        return null;
    }

}
