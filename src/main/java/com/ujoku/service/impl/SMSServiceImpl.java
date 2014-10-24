package com.ujoku.service.impl;

import com.ujoku.service.SMSService;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.MessageFormat;


/**
 * Created by Administrator on 2014/10/24.
 */
@Service
public class SMSServiceImpl extends SMSService{
    private static Logger logger = LoggerFactory.getLogger(SMSServiceImpl.class);

    private static String DOMAIN="http://api.sojisms.com:8082";
    private static String URI = "/sendsms.aspx?";
    private static String SUSER = "lyhotel";
    private static String SPASS = "a3582a";
    @Override
    public void toYiChi(String phone, String captcha) throws IOException {
        String uri = DOMAIN + URI +"suser="+SUSER+"&spass="+SPASS+"&telnum="+ phone +"&nr="
                + URLEncoder.encode(String.format("您的验证码为：%s【优酒库】", captcha), "gb2312");
        logger.debug("uri: "+uri);

        HttpClient client = HttpClientBuilder.create().build();
        HttpRequestBase request = new HttpGet(uri);

        HttpResponse response = client.execute(request);
        int responseCode = response.getStatusLine().getStatusCode();
        logger.debug("responseCode: " + responseCode);
        byte[] content = EntityUtils.toByteArray(response.getEntity());

        logger.debug("result: " + new String(content));
        request.releaseConnection();

    }


}
