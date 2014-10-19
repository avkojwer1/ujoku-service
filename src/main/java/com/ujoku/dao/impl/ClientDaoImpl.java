package com.ujoku.dao.impl;

import com.labillusion.core.database.base.mybatis.dao.impl.BaseDaoImpl;
import com.ujoku.dao.ClientDao;
import com.ujoku.domain.Client;
import org.springframework.stereotype.Repository;

/**
 * Created by Greg on 2014/10/17.
 */
@Repository
public class ClientDaoImpl extends BaseDaoImpl<Client> implements ClientDao<Client> {

}
