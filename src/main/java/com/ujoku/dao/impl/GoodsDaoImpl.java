package com.ujoku.dao.impl;

import com.labillusion.core.database.base.mybatis.dao.impl.BaseDaoImpl;
import com.ujoku.dao.GoodsDao;
import com.ujoku.domain.Goods;
import org.springframework.stereotype.Repository;

/**
 * Created by Greg on 2014/10/17.
 */
@Repository
public class GoodsDaoImpl extends BaseDaoImpl<Goods> implements GoodsDao<Goods> {

}
