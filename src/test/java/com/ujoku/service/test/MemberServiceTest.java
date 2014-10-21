package com.ujoku.service.test;

import com.labillusion.core.platform.crypto.MD5;
import com.ujoku.base.BaseTest;
import com.ujoku.domain.Member;
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

    @Test
    public void AddTest() throws Exception {
        Member member = new Member();
        member.setPassword(MD5.encrypt("123"));
        member.setUser_name("jingjing");
        member.setReg_time(System.currentTimeMillis() / 1000L);
        service.insert(member);
    }

}
