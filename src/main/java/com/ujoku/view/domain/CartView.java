package com.ujoku.view.domain;

/**
 * Created by greg.chen on 14-10-23.
 */
public class CartView {
    private int rec_id;
    private int user_id;
    private int goods_id;
    private int quantity;

    private CartGoodsView goods;

    public CartGoodsView getGoods() {
        return goods;
    }

    public void setGoods(CartGoodsView goods) {
        this.goods = goods;
    }

    public int getRec_id() {
        return rec_id;
    }

    public void setRec_id(int rec_id) {
        this.rec_id = rec_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
