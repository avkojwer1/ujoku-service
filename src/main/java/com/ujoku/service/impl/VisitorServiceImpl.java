package com.ujoku.service.impl;

import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.ujoku.dao.VisitorDao;
import com.ujoku.domain.Visitor;
import com.ujoku.service.VisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 14-10-19.
 */
@Service
public class VisitorServiceImpl extends BaseServiceImpl<Visitor> implements VisitorService<Visitor> {

    @Autowired
    private VisitorDao dao;

    @Override
    protected BaseDao<Visitor> getBaseDao() {
        return dao;
    }
}
