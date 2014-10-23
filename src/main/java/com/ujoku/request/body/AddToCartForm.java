package com.ujoku.request.body;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Min;

/**
 * Created by greg.chen on 14-10-23.
 */
public class AddToCartForm {
    @Min(1)
    private int goods_id;
    @Min(1)
    private int quantity;

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
