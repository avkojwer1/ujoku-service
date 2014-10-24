package com.ujoku.request.body;


import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;


import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

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

    @Size.List({
            @Size(min=8, message="The field must be at least {min} characters"),
            @Size(max=20, message="The field must be less than {max} characters")
    })
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
