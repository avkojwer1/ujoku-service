package com.ujoku.requestbody;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * Created by Administrator on 2014/10/20.
 */
public class LoginForm {
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @NotEmpty
    private String userName;
    @NotEmpty
    private String password;

}
