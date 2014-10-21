package com.ujoku.dao.impl;

import com.labillusion.core.database.base.mybatis.dao.impl.BaseDaoImpl;
import com.ujoku.dao.MemberDao;
import com.ujoku.domain.Member;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 14-10-19.
 */
@Repository
public class MemberDaoImpl extends BaseDaoImpl<Member> implements MemberDao<Member> {

}
