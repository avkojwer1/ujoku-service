package com.ujoku.service.test;

import com.labillusion.core.util.UUIDUtils;
import com.ujoku.base.BaseTest;
import com.ujoku.domain.Visitor;
import com.ujoku.service.ArticleService;
import com.ujoku.service.VisitorService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

/**
 * Created by Administrator on 14-10-19.
 */
public class ArticleServiceTest extends BaseTest {

    @Autowired
    private ArticleService service;

    @Test
    public void selectTest(){
        Assert.isTrue(service.selectList(null).size() > 0);
    }

}

