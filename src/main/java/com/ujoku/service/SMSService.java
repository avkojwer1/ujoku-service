package com.ujoku.service;

import java.io.IOException;

/**
 * Created by Administrator on 2014/10/24.
 */
public abstract class SMSService {
    public abstract void toYiChi(String phone, String captcha) throws IOException;

    /**
     * 6位随机数
     * @return
     */
    public String CalculateCaptcha() {
        String captcha = "";
        for(int i=0;i<6;i++)
        {
            captcha +=(int)(Math.random()*10);
        }
        return captcha;
    }
}
