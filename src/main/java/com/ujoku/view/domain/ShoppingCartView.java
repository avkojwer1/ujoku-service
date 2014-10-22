package com.ujoku.view.domain;

import com.ujoku.domain.Cart;

import java.util.List;

/**
 * Created by Administrator on 2014/10/19.
 */
public class ShoppingCartView {

    private List<Cart> list;

    public ShoppingCartView(List list) {
        this.list = list;
    }

    public List<Cart> getList() {
        return list;
    }

    public void setList(List<Cart> list) {
        this.list = list;
    }
}
