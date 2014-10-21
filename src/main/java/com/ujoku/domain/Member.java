package com.ujoku.domain;

import java.util.Date;

/**
 * Created by greg.chen on 14-10-20.
 */
public class Member {
    private int user_id;
    private String user_name;
    private String email;
    private String password;
    private String real_name;
    private Short gender;
    private Date birthday;
    private long reg_time;

    public long getReg_time() {
        return reg_time;
    }

    public void setReg_time(long reg_time) {
        this.reg_time = reg_time;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getReal_name() {
        return real_name;
    }

    public void setReal_name(String real_name) {
        this.real_name = real_name;
    }

    public Short getGender() {
        return gender;
    }

    public void setGender(Short gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}
