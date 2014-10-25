package com.ujoku.service.test;

import com.ujoku.base.BaseTest;
import com.ujoku.domain.GoodsSpec;
import com.ujoku.service.GoodsService;
import com.ujoku.service.GoodsSpecService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Administrator on 2014/10/17.
 */
public class GoodsSpecServiceTest extends BaseTest {

    @Autowired
    private GoodsSpecService service;

    @Test
    public void selectListTest() {

        org.springframework.util.Assert.isTrue(service.selectList(null).size() > 0);
    }

}
