package com.ujoku.service.test;

import com.ujoku.base.BaseTest;
import com.ujoku.service.CdnService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Administrator on 14-10-25.
 */
public class CdnServiceTest extends BaseTest{

    @Autowired
    private CdnService service;

    @Test
    public void test(){
        System.out.print(service.builder("/asdfasd/asdf/asdf/a/f"));
    }
}
