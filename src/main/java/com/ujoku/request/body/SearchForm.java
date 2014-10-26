package com.ujoku.request.body;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

/**
 * Created by greg.chen on 14-10-20.
 */
public class SearchForm {

    private int categoryId;

    private String freeText;

    private String order;

    private String keyword;

    private int[] priceRange;

    public int[] getPriceRange() {
        return priceRange;
    }

    public void setPriceRange(int[] priceRange) {
        this.priceRange = priceRange;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getFreeText() {
        return freeText;
    }

    public void setFreeText(String freeText) {
        this.freeText = freeText;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    @Override
    public String toString() {
        return "SearchForm{" +
                "categoryId=" + categoryId +
                ", freeText='" + freeText + '\'' +
                ", order='" + order + '\'' +
                '}';
    }
}
