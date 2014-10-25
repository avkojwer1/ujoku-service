package com.ujoku.dao.impl;

import com.labillusion.core.database.base.mybatis.dao.impl.BaseDaoImpl;
import com.ujoku.dao.AddressDao;
import com.ujoku.domain.Address;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 14-10-25.
 */
@Repository
public class AddressDaoImpl extends BaseDaoImpl<Address> implements AddressDao<Address> {
}
