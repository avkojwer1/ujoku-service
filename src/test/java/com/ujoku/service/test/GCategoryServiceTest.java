package com.ujoku.service.test;

import com.ujoku.base.BaseTest;
import com.ujoku.service.GCategoryService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Administrator on 14-10-26.
 */
public class GCategoryServiceTest extends BaseTest{

    @Autowired
    private GCategoryService service;

    @Test
    public void selectTest(){
        service.selectList();
    }
}
