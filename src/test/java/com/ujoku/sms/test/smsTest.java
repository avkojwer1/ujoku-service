package com.ujoku.sms.test;

import com.ujoku.base.BaseTest;
import com.ujoku.service.SMSService;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/**
 * Created by Administrator on 2014/10/24.
 */
public class smsTest extends BaseTest{

    @Autowired
    private SMSService service;

    @Test
    public void test() throws IOException {
        service.toYiChi("13860449850", "753332");
    }

    @Test
    public void randomTest(){
        String s = "";
        for(int i=0;i<6;i++)
        {
            s +=(int)(Math.random()*10);
        }

        System.out.println(s);
    }

}
