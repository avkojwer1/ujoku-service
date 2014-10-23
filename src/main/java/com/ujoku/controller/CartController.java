package com.ujoku.controller;

import com.labillusion.core.platform.web.listener.SessionCollect;
import com.labillusion.core.platform.web.rest.RESTController;
import com.ujoku.domain.Cart;
import com.ujoku.domain.Goods;
import com.ujoku.domain.Member;
import com.ujoku.interceptor.LoginRequired;
import com.ujoku.request.body.AddToCartForm;
import com.ujoku.service.CartService;
import com.ujoku.service.GoodsService;
import com.ujoku.view.builder.ShoppingCartViewBuilder;
import com.ujoku.view.domain.ShoppingCartView;
import org.hamcrest.Matchers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static ch.lambdaj.Lambda.having;
import static ch.lambdaj.Lambda.on;
import static ch.lambdaj.Lambda.select;


/**
 * Created by greg.chen on 14-10-21.
 */
@RestController
public class CartController extends RESTController {

    @Autowired
    public CartService cartService;
    @Autowired
    public GoodsService goodsService;
    @Autowired
    public ShoppingCartViewBuilder shoppingCartViewBuilder;

    @RequestMapping(value="/shoppingCart", method = RequestMethod.POST)
    @ResponseBody
    @LoginRequired
    public ShoppingCartView shoppingCart(HttpServletRequest request) throws Exception {
        HttpSession session = SessionCollect.find(request);
        Member member = (Member) session.getAttribute("Member");

        ShoppingCartView view = shoppingCartViewBuilder.builderShoppingCartView(member.getUser_id());

        return view;
    }

    @RequestMapping(value="/cart/add", method = RequestMethod.POST)
    @ResponseBody
    @LoginRequired
    public Cart add(@Valid @RequestBody AddToCartForm form, HttpServletRequest request){
        //判断Goods是否存在
        Goods goods = goodsService.selectById(form.getGoods_id());
        HttpSession session =  SessionCollect.find(request);
        Member member = (Member) session.getAttribute("Member");

        Map<String, Object> query = new HashMap<String, Object>();
        query.put("user_id", member.getUser_id());
        List<Cart> carts = cartService.selectList(query);

        List<Cart> existedList = select(carts, having(on(Cart.class).getGoods_id(),  Matchers.equalTo(goods.getGoods_id())));
        Cart existedItem = null;
        if(existedList != null && existedList.size() > 0){
            existedItem = existedList.get(0);
        }

        //如果已经存在该goods, 就更新qty
        if(existedItem != null){
            existedItem.setQuantity(existedItem.getQuantity() + form.getQuantity());
            cartService.update(existedItem);
            return  existedItem;
        }
        //如果不存在就新增
        Cart cart = new Cart();
        cart.setGoods_id(goods.getGoods_id());
        cart.setQuantity(form.getQuantity());
        cart.setUser_id(member.getUser_id());
        cartService.insert(cart);
        return cart;
    }

}
