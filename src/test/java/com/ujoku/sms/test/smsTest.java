package com.ujoku.sms.test;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.junit.Test;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/**
 * Created by Administrator on 2014/10/24.
 */
public class smsTest {

    @Test
    public void test() throws IOException {
        String uri = "http://api.sojisms.com:8082/sendsms.aspx?suser=lyhotel&spass=a3582a&telnum=18006003050&nr=";
        String nr = new String("hello【优酒库】".getBytes(),"gb2312");

        HttpClient client = HttpClientBuilder.create().build();

        HttpRequestBase request = new HttpGet(uri+ nr);

        HttpResponse response = client.execute(request);
        int responseCode = response.getStatusLine().getStatusCode();
        System.out.println(responseCode);
        byte[] content = EntityUtils.toByteArray(response.getEntity());

        System.out.println(new String(content));
        request.releaseConnection();
    }

}
