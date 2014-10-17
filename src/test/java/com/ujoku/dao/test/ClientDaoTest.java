package com.ujoku.dao.test;

import com.ujoku.base.BaseTest;
import com.ujoku.dao.ClientDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Administrator on 2014/10/17.
 */
public class ClientDaoTest extends BaseTest {
    @Autowired
    private ClientDao clientDao;

    @Test
    public void selectList(){
        clientDao.selectList(null);
    }


}
