package com.ujoku.view.builder;

import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.platform.web.rest.view.BaseViewBuilder;
import com.labillusion.core.util.MessageSourceUtils;
import com.ujoku.domain.Cart;
import com.ujoku.domain.Goods;
import com.ujoku.service.CartService;
import com.ujoku.service.GoodsService;
import com.ujoku.view.domain.CartView;
import com.ujoku.view.domain.GoodsView;
import com.ujoku.view.domain.SearchView;
import com.ujoku.view.domain.ShoppingCartView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2014/10/19.
 */
@Component
public class ShoppingCartViewBuilder {

    @Autowired
    public CartService cartService;

    @Autowired
    public MessageSourceUtils source;

    @Autowired
    public GoodsService goodsService;
    @Autowired
    public CartGoodsViewBuilder cartGoodsViewBuilder;

    public ShoppingCartView builderShoppingCartView(int user_id) throws Exception {

        Map<String, Object> query = new HashMap<String, Object>();
        query.put("user_id", user_id);
        List<Cart> carts = cartService.selectList(query);

        if(carts == null || carts.size() == 0)
          throw new ResourceNotFoundException(source.getMessage("cart.not.found"));

        List<CartView> cartViews = new ArrayList<CartView>();
        List<Goods> goodsList =  goodsService.selectList(null);

        for(Cart item : carts){
            CartView view = new CartView();
            view.setRec_id(item.getRec_id());
            view.setUser_id(item.getUser_id());
            view.setQuantity(item.getQuantity());
            view.setGoods_id(item.getGoods_id());
            Goods goods = goodsService.selectById(goodsList, item.getGoods_id());
            view.setGoods(cartGoodsViewBuilder.Create(goods));
            cartViews.add(view);
        }

        return new ShoppingCartView(cartViews);
    }

}
