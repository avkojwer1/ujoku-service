package com.ujoku.domain;

import com.fasterxml.jackson.annotation.JsonInclude;

/**
 * Created by Administrator on 2014/10/18.
 */
public class Visitor {

    private String id;

    private int user_id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
}
