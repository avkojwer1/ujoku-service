package com.ujoku.service.test;

import com.ujoku.base.BaseTest;
import com.ujoku.domain.Goods;
import com.ujoku.service.ClientService;
import com.ujoku.service.GoodsService;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Administrator on 2014/10/17.
 */
public class GoodsServiceTest extends BaseTest {

    @Autowired
    private GoodsService service;

    @Test
    public void selectListTest() {
        org.springframework.util.Assert.isTrue(service.selectList(null).size() > 0);

    }


}
