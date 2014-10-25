package com.ujoku.service.impl;


import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.ujoku.dao.GoodsSpecDao;
import com.ujoku.domain.Goods;
import com.ujoku.domain.GoodsSpec;
import com.ujoku.service.GoodsSpecService;
import org.hamcrest.Matchers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static ch.lambdaj.Lambda.having;
import static ch.lambdaj.Lambda.on;
import static ch.lambdaj.Lambda.select;

/**
 * Created by Greg on 2014/10/17.
 */
@Service
public class GoodSpecServiceImpl extends BaseServiceImpl<GoodsSpec> implements GoodsSpecService<GoodsSpec> {

    @Autowired
    private GoodsSpecDao goodSpecDao;

    @Override
    protected BaseDao<GoodsSpec> getBaseDao() {
        return goodSpecDao;
    }

    @Override
    public GoodsSpec selectGoodsSpecById(int goodsId) {
        List<GoodsSpec> list = goodSpecDao.selectList(null);
        List<GoodsSpec> result = select(list, having(on(GoodsSpec.class).getGoods_id(), Matchers.equalTo(goodsId)));
        if(result == null || result.size() == 0)
           return null;

        return result.get(0);
    }
}
