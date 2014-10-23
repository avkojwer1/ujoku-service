package com.ujoku.request.body;

import javax.validation.constraints.Min;

/**
 * Created by Administrator on 2014/10/23.
 */
public class UpdateCartForm {
    @Min(1)
    private int cart_id;

    @Min(1)
    private int quantity;


    public int getCart_id() {
        return cart_id;
    }

    public void setCart_id(int cart_id) {
        this.cart_id = cart_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
