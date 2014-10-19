package com.ujoku.service.impl;


import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.ujoku.dao.ClientDao;
import com.ujoku.domain.Client;
import com.ujoku.service.ClientService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2014/10/17.
 */
@Service
public class ClientServiceImpl extends BaseServiceImpl<Client> implements ClientService<Client>{

    @Autowired
    private ClientDao clientDao;

    @Override
    protected BaseDao<Client> getBaseDao() {
        return clientDao;
    }
}
