package com.ujoku.service.test;

import com.ujoku.base.BaseTest;
import com.ujoku.service.ClientService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Administrator on 2014/10/17.
 */
public class ClientServiceTest extends BaseTest {

    @Autowired
    private ClientService clientService;

    @Test
    public void selectListTest(){
        System.out.println(clientService.selectList(null));
    }


}
