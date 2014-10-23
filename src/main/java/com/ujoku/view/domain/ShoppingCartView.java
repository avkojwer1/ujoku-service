package com.ujoku.view.domain;

import com.ujoku.domain.Cart;

import java.util.List;

/**
 * Created by Administrator on 2014/10/19.
 */
public class ShoppingCartView {

    private List<CartView> list;

    public ShoppingCartView(List list) {
        this.list = list;
    }

    public List<CartView> getList() {
        return list;
    }

    public void setList(List<CartView> list) {
        this.list = list;
    }
}
