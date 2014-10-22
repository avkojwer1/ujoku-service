package com.ujoku.dao.impl;

import com.labillusion.core.database.base.mybatis.dao.impl.BaseDaoImpl;
import com.ujoku.dao.CartDao;
import com.ujoku.domain.Cart;
import org.springframework.stereotype.Repository;

/**
 * Created by greg.chen on 14-10-22.
 */
@Repository
public class CartDaoImpl extends BaseDaoImpl<Cart> implements CartDao<Cart> {
}
