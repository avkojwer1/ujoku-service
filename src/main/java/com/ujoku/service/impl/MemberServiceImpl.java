package com.ujoku.service.impl;

import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.ujoku.dao.MemberDao;
import com.ujoku.dao.VisitorDao;
import com.ujoku.domain.Member;
import com.ujoku.domain.Visitor;
import com.ujoku.service.MemberService;
import com.ujoku.service.VisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 14-10-19.
 */
@Service
public class MemberServiceImpl extends BaseServiceImpl<Member> implements MemberService<Member> {

    @Autowired
    private MemberDao dao;

    @Override
    protected BaseDao<Member> getBaseDao() {
        return dao;
    }
}
