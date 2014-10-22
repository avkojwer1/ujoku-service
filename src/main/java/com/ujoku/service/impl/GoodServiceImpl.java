package com.ujoku.service.impl;


import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.ujoku.dao.GoodsDao;
import com.ujoku.domain.Goods;
import com.ujoku.service.GoodsService;
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
public class GoodServiceImpl extends BaseServiceImpl<Goods> implements GoodsService<Goods> {

    @Autowired
    private GoodsDao goodDao;

    @Override
    protected BaseDao<Goods> getBaseDao() {
        return goodDao;
    }

    @Override
    public Goods selectById(int id) {
        List<Goods> list =  super.selectList(null);
        List<Goods> result = select(list, having(on(Goods.class).getGoods_id(), Matchers.equalTo(id)));
        if(result == null || result.size() == 0)
            throw new ResourceNotFoundException("can not found article by id.");

        return  result.get(0);
    }
}
