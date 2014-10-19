package com.ujoku.dao.impl;

import com.labillusion.core.database.base.mybatis.dao.impl.BaseDaoImpl;
import com.ujoku.dao.VisitorDao;
import com.ujoku.domain.Visitor;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 14-10-19.
 */
@Repository
public class VisitorDaoImpl extends BaseDaoImpl<Visitor> implements VisitorDao<Visitor>{

}
