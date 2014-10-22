package com.ujoku.service;

import com.labillusion.core.database.base.mybatis.service.base.BaseService;
import com.ujoku.domain.Goods;

/**
 * Created by Greg on 2014/10/17.
 */
public interface GoodsService<T> extends BaseService<T> {
    public Goods selectById(int id);

}
