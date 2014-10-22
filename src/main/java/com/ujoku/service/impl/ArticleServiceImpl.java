package com.ujoku.service.impl;

import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.ujoku.dao.ArticleDao;
import com.ujoku.domain.Article;
import com.ujoku.service.ArticleService;
import org.hamcrest.Matchers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static ch.lambdaj.Lambda.having;
import static ch.lambdaj.Lambda.on;
import static ch.lambdaj.Lambda.select;

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

    public Article selectById(int id){
        List<Article> list =  super.selectList(null);
        List<Article> result = select(list, having(on(Article.class).getArticle_id(), Matchers.equalTo(id)));
        if(result == null || result.size() == 0)
            throw new ResourceNotFoundException("can not found article by id.");

        return  result.get(0);
    }


}
