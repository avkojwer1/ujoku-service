package com.ujoku.request.body;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * Created by Administrator on 2014/10/24.
 */
public class SendSMSForm {

    @NotEmpty
    private String phone;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}
