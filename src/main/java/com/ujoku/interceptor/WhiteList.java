package com.ujoku.interceptor;

/**
 * Created by greg.chen on 14-10-23.
 */
public class WhiteList {

    public static boolean check(String uri){
        if("/".equals(uri)){
            return true;
        }

        if(uri.endsWith("js") || uri.endsWith("css") || uri.endsWith("png") || uri.endsWith("jpg")  || uri.endsWith("gif")){
            return true;
        }
        return false;
    }
}
