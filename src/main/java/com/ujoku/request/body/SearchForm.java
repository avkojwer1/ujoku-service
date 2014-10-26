package com.ujoku.request.body;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

/**
 * Created by greg.chen on 14-10-20.
 */
public class SearchForm {

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    private int categoryId;

    public String getFreeText() {
        return freeText;
    }

    public void setFreeText(String freeText) {
        this.freeText = freeText;
    }

    private String freeText;

    private String order;

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
