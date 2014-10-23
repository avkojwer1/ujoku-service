package com.ujoku.controller;

import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.platform.web.listener.SessionCollect;
import com.labillusion.core.platform.web.rest.RESTController;
import com.labillusion.core.util.MessageSourceUtils;
import com.ujoku.domain.Cart;
import com.ujoku.domain.Goods;
import com.ujoku.domain.Member;
import com.ujoku.interceptor.LoginRequired;
import com.ujoku.request.body.AddToCartForm;
import com.ujoku.request.body.UpdateCartForm;
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
    protected CartService cartService;
    @Autowired
    protected GoodsService goodsService;
    @Autowired
    protected ShoppingCartViewBuilder shoppingCartViewBuilder;
    @Autowired
    protected MessageSourceUtils messageSourceUtils;

    @RequestMapping(value="/shoppingCart", method = RequestMethod.POST)
    @ResponseBody
    @LoginRequired
    public ShoppingCartView shoppingCart(HttpServletRequest request) throws Exception {
        Member member = getMember(request);

        ShoppingCartView view = shoppingCartViewBuilder.builderShoppingCartView(member.getUser_id());

        return view;
    }

    @RequestMapping(value="/cart/add", method = RequestMethod.POST)
    @ResponseBody
    @LoginRequired
    public Cart add(@Valid @RequestBody AddToCartForm form, HttpServletRequest request){
        //判断Goods是否存在
        Goods goods = goodsService.selectById(form.getGoods_id());
        Member member = getMember(request);

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

    private Member getMember(HttpServletRequest request) {
        HttpSession session =  SessionCollect.find(request);
        return (Member) session.getAttribute("Member");
    }

    @RequestMapping(value="/cart/{id}", method = RequestMethod.DELETE)
    @ResponseBody
    @LoginRequired
    public Cart delete(@PathVariable int id, HttpServletRequest request){
        Member member = getMember(request);
        Cart cart = getCart(id, member);

        cartService.deleteById(String.valueOf(cart.getRec_id()));

        return cart;
    }

    private Cart getCart(int id, Member member) {
        Cart cart = (Cart) cartService.selectById(String.valueOf(id));
        if(cart == null || cart.getUser_id() != member.getUser_id())
            throw new ResourceNotFoundException(messageSourceUtils.getMessage("cart.not.found"));
        return cart;
    }

    @RequestMapping(value="/cart/update", method = RequestMethod.PUT)
    @ResponseBody
    @LoginRequired
    public Cart update(@Valid @RequestBody UpdateCartForm form, HttpServletRequest request) {
        Member member = getMember(request);
        Cart cart = getCart(form.getCart_id(), member);

        cart.setQuantity(form.getQuantity());
        cartService.update(cart);
        return null;
    }
}
