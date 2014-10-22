package com.ujoku.service.test;

import com.ujoku.base.BaseTest;
import com.ujoku.service.CartService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by greg.chen on 14-10-22.
 */
public class CartServiceTest extends BaseTest {

    @Autowired
    public CartService service;

    @Test
    public void selectTest(){
        Map<String, Object> query = new HashMap<String, Object>();
        query.put("user_id", 11);
        service.selectList(query);
    }


}
