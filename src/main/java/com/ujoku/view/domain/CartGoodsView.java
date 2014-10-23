package com.ujoku.view.domain;

/**
 * Created by greg.chen on 14-10-23.
 */
public class CartGoodsView {
    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getMarket_price() {
        return market_price;
    }

    public void setMarket_price(float market_price) {
        this.market_price = market_price;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public String getDefault_image2() {
        return default_image2;
    }

    public void setDefault_image2(String default_image2) {
        this.default_image2 = default_image2;
    }

    public String getDefault_image() {
        return default_image;
    }

    public void setDefault_image(String default_image) {
        this.default_image = default_image;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    private float price;
    private float market_price;
    private String goods_name;
    private int goods_id;
    private String default_image2;
    private String default_image;
    private String brand;
}
