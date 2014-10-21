package com.ujoku.service.impl;

import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.ujoku.dao.ArticleDao;
import com.ujoku.domain.Article;
import com.ujoku.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 14-10-19.
 */
@Service
public class ArticleServiceImpl extends BaseServiceImpl<Article> implements ArticleService<Article> {

    @Autowired
    private ArticleDao dao;

    @Override
    protected BaseDao<Article> getBaseDao() {
        return dao;
    }
}
