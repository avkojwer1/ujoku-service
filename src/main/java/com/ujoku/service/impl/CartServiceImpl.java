package com.ujoku.service.impl;

import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.ujoku.dao.ArticleDao;
import com.ujoku.dao.CartDao;
import com.ujoku.domain.Article;
import com.ujoku.domain.Cart;
import com.ujoku.service.ArticleService;
import com.ujoku.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 14-10-19.
 */
@Service
public class CartServiceImpl extends BaseServiceImpl<Cart> implements CartService<Cart> {

    @Autowired
    private CartDao dao;

    @Override
    protected BaseDao<Cart> getBaseDao() {
        return dao;
    }
}
