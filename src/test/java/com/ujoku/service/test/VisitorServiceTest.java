package com.ujoku.service.test;

import com.labillusion.core.util.UUIDUtils;
import com.ujoku.base.BaseTest;
import com.ujoku.domain.Visitor;
import com.ujoku.service.VisitorService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

/**
 * Created by Administrator on 14-10-19.
 */
public class VisitorServiceTest extends BaseTest {

    @Autowired
    private VisitorService service;

    @Test
    @Transactional
    public void insertTest(){

        Visitor visitor = new Visitor();
        visitor.setId(UUIDUtils.create());
        visitor.setUser_id(14);

        service.insert(visitor);
    }

    @Test
    public void selectTest(){

        Visitor visitor = (Visitor) service.selectById("30292100576611E452DD71287299DF15");

        Assert.isTrue(visitor != null);
    }

}

