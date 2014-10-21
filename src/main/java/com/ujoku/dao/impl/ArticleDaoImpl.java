package com.ujoku.dao.impl;

import com.labillusion.core.database.base.mybatis.dao.impl.BaseDaoImpl;
import com.ujoku.dao.ArticleDao;
import com.ujoku.domain.Article;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 14-10-19.
 */
@Repository
public class ArticleDaoImpl extends BaseDaoImpl<Article> implements ArticleDao<Article> {

}
