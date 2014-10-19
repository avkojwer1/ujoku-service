package com.ujoku.service.test;

import com.labillusion.core.util.UUIDUtils;
import com.ujoku.base.BaseTest;
import com.ujoku.domain.Visitor;
import com.ujoku.service.VisitorService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Administrator on 14-10-19.
 */
public class VisitorServiceTest extends BaseTest {

    @Autowired
    private VisitorService service;

    @Test
    public void insertTest(){

        Visitor visitor = new Visitor();
        visitor.setId(UUIDUtils.create());
        visitor.setUser_id(14);

        service.insert(visitor);
    }

}

