package com.ujoku.request.body;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Min;

/**
 * Created by Greg on 2014/10/20.
 */
public class MemberCreateForm {
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
    @NotEmpty
    private String Captcha;

    public String getCaptcha() {
        return Captcha;
    }

    public void setCaptcha(String captcha) {
        Captcha = captcha;
    }
}
