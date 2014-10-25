package com.ujoku.service.impl;

import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.ujoku.dao.AddressDao;
import com.ujoku.domain.Address;
import com.ujoku.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 14-10-25.
 */
@Service
public class AddressServiceImpl extends BaseServiceImpl<Address> implements AddressService<Address> {

    @Autowired
    private AddressDao dao;

    @Override
    protected BaseDao<Address> getBaseDao() {
        return this.dao;
    }
}
