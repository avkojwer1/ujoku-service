package com.ujoku.dao.test;

import com.ujoku.base.BaseTest;
import com.ujoku.dao.ClientDao;
import com.ujoku.domain.Client;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Administrator on 2014/10/17.
 */
public class ClientDaoTest extends BaseTest {
    @Autowired
    private ClientDao clientDao;

    @Test
    public void selectList() {

        List<Client> clients = clientDao.selectList(null);
        System.out.println(clients);
    }


}
