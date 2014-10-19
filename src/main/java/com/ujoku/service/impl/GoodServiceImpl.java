package com.ujoku.service.impl;


import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.ujoku.dao.GoodsDao;
import com.ujoku.domain.Goods;
import com.ujoku.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2014/10/17.
 */
@Service
public class GoodServiceImpl extends BaseServiceImpl<Goods> implements GoodsService<Goods> {

    @Autowired
    private GoodsDao goodDao;

    @Override
    protected BaseDao<Goods> getBaseDao() {
        return goodDao;
    }
}
