package com.ujoku.service;

import com.labillusion.core.database.base.mybatis.service.base.BaseService;
import com.ujoku.domain.Goods;

import java.util.List;

/**
 * Created by Greg on 2014/10/17.
 */
public interface GoodsService<T> extends BaseService<T> {
    List<Goods> selectList();

    Goods selectById(int id);

    Goods selectById(List<Goods> list, int id);
}
