package com.ujoku.domain;

/**
 * Created by Administrator on 2014/10/25.
 */
public class GoodsSpec {
    private int spec_id;
    private int goods_id;
    private int stock;

    public int getSpec_id() {
        return spec_id;
    }

    public void setSpec_id(int spec_id) {
        this.spec_id = spec_id;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
}
