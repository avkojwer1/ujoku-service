package com.ujoku.service.test;

import com.ujoku.base.BaseTest;
import com.ujoku.service.MemberService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2014/10/20.
 */
public class MemberServiceTest extends BaseTest {

    @Autowired
    private MemberService service;

    @Test
    public void selectOneTest(){
        Map<String, Object> query = new HashMap<String, Object>();
        query.put("name","15605922222");
        Object o = service.selectOne(query);
        Assert.isTrue(o != null);
    }

}
