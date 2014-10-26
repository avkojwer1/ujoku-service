package com.ujoku.domain;

/**
 * Created by Administrator on 2014/10/19.
 */
public class Goods {

    private String type;
    private String tags;
    private int stock;

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "type='" + type + '\'' +
                ", tags='" + tags + '\'' +
                ", store_id=" + store_id +
                ", spec_qty=" + spec_qty +
                ", spec_name_2='" + spec_name_2 + '\'' +
                ", spec_name_1='" + spec_name_1 + '\'' +
                ", recommended=" + recommended +
                ", prizeinfo='" + prizeinfo + '\'' +
                ", price=" + price +
                ", mgrade_year='" + mgrade_year + '\'' +
                ", mgrade_norm=" + mgrade_norm +
                ", mgrade_ingredients='" + mgrade_ingredients + '\'' +
                ", mgrade_grade='" + mgrade_grade + '\'' +
                ", mgrade_dis='" + mgrade_dis + '\'' +
                ", mgrade_areas='" + mgrade_areas + '\'' +
                ", mgrade_alcohol='" + mgrade_alcohol + '\'' +
                ", market_price=" + market_price +
                ", last_update=" + last_update +
                ", if_show=" + if_show +
                ", goods_name='" + goods_name + '\'' +
                ", goods_id=" + goods_id +
                ", description='" + description + '\'' +
                ", default_spec=" + default_spec +
                ", default_image2='" + default_image2 + '\'' +
                ", default_image='" + default_image + '\'' +
                ", closed=" + closed +
                ", close_reason=" + close_reason +
                ", cate_name='" + cate_name + '\'' +
                ", cate_id_4=" + cate_id_4 +
                ", cate_id_3=" + cate_id_3 +
                ", cate_id_2=" + cate_id_2 +
                ", cate_id_1=" + cate_id_1 +
                ", cate_id=" + cate_id +
                ", brand='" + brand + '\'' +
                ", add_time=" + add_time +
                '}';
    }

    private int store_id;
    private int spec_qty;
    private String spec_name_2;
    private String spec_name_1;
    private int recommended;
    private String prizeinfo;
    private Float price;
    private String mgrade_year;
    private int mgrade_norm;
    private String mgrade_ingredients;
    private String mgrade_grade;
    private String mgrade_dis;
    private String mgrade_areas;
    private String mgrade_alcohol;
    private float market_price;
    private int last_update;
    private int if_show;
    private String goods_name;
    private int goods_id;
    private String description;
    private int default_spec;
    private String default_image2;
    private String default_image;
    private String defaultImage;

    public String getDefaultImage() {
        return defaultImage;
    }

    public void setDefaultImage(String defaultImage) {
        this.defaultImage = defaultImage;
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

    private int closed;
    private int close_reason;
    private String cate_name;
    private int cate_id_4;
    private int cate_id_3;
    private int cate_id_2;
    private int cate_id_1;
    private int cate_id;
    private String brand;
    private int add_time;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public int getStore_id() {
        return store_id;
    }

    public void setStore_id(int store_id) {
        this.store_id = store_id;
    }

    public int getSpec_qty() {
        return spec_qty;
    }

    public void setSpec_qty(int spec_qty) {
        this.spec_qty = spec_qty;
    }

    public String getSpec_name_2() {
        return spec_name_2;
    }

    public void setSpec_name_2(String spec_name_2) {
        this.spec_name_2 = spec_name_2;
    }

    public String getSpec_name_1() {
        return spec_name_1;
    }

    public void setSpec_name_1(String spec_name_1) {
        this.spec_name_1 = spec_name_1;
    }

    public int getRecommended() {
        return recommended;
    }

    public void setRecommended(int recommended) {
        this.recommended = recommended;
    }

    public String getPrizeinfo() {
        return prizeinfo;
    }

    public void setPrizeinfo(String prizeinfo) {
        this.prizeinfo = prizeinfo;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getMgrade_year() {
        return mgrade_year;
    }

    public void setMgrade_year(String mgrade_year) {
        this.mgrade_year = mgrade_year;
    }

    public int getMgrade_norm() {
        return mgrade_norm;
    }

    public void setMgrade_norm(int mgrade_norm) {
        this.mgrade_norm = mgrade_norm;
    }

    public String getMgrade_ingredients() {
        return mgrade_ingredients;
    }

    public void setMgrade_ingredients(String mgrade_ingredients) {
        this.mgrade_ingredients = mgrade_ingredients;
    }

    public String getMgrade_grade() {
        return mgrade_grade;
    }

    public void setMgrade_grade(String mgrade_grade) {
        this.mgrade_grade = mgrade_grade;
    }

    public String getMgrade_dis() {
        return mgrade_dis;
    }

    public void setMgrade_dis(String mgrade_dis) {
        this.mgrade_dis = mgrade_dis;
    }

    public String getMgrade_areas() {
        return mgrade_areas;
    }

    public void setMgrade_areas(String mgrade_areas) {
        this.mgrade_areas = mgrade_areas;
    }

    public String getMgrade_alcohol() {
        return mgrade_alcohol;
    }

    public void setMgrade_alcohol(String mgrade_alcohol) {
        this.mgrade_alcohol = mgrade_alcohol;
    }

    public float getMarket_price() {
        return market_price;
    }

    public void setMarket_price(float market_price) {
        this.market_price = market_price;
    }

    public int getLast_update() {
        return last_update;
    }

    public void setLast_update(int last_update) {
        this.last_update = last_update;
    }

    public int getIf_show() {
        return if_show;
    }

    public void setIf_show(int if_show) {
        this.if_show = if_show;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDefault_spec() {
        return default_spec;
    }

    public void setDefault_spec(int default_spec) {
        this.default_spec = default_spec;
    }

    public int getClosed() {
        return closed;
    }

    public void setClosed(int closed) {
        this.closed = closed;
    }

    public int getClose_reason() {
        return close_reason;
    }

    public void setClose_reason(int close_reason) {
        this.close_reason = close_reason;
    }

    public String getCate_name() {
        return cate_name;
    }

    public void setCate_name(String cate_name) {
        this.cate_name = cate_name;
    }

    public int getCate_id_4() {
        return cate_id_4;
    }

    public void setCate_id_4(int cate_id_4) {
        this.cate_id_4 = cate_id_4;
    }

    public int getCate_id_3() {
        return cate_id_3;
    }

    public void setCate_id_3(int cate_id_3) {
        this.cate_id_3 = cate_id_3;
    }

    public int getCate_id_2() {
        return cate_id_2;
    }

    public void setCate_id_2(int cate_id_2) {
        this.cate_id_2 = cate_id_2;
    }

    public int getCate_id_1() {
        return cate_id_1;
    }

    public void setCate_id_1(int cate_id_1) {
        this.cate_id_1 = cate_id_1;
    }

    public int getCate_id() {
        return cate_id;
    }

    public void setCate_id(int cate_id) {
        this.cate_id = cate_id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getAdd_time() {
        return add_time;
    }

    public void setAdd_time(int add_time) {
        this.add_time = add_time;
    }
}
