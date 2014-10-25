package com.ujoku.service;

import com.labillusion.core.database.base.mybatis.service.base.BaseService;
import com.ujoku.domain.Goods;
import com.ujoku.domain.GoodsSpec;

import java.util.List;

/**
 * Created by Greg on 2014/10/17.
 */
public interface GoodsSpecService<T> extends BaseService<T> {

    GoodsSpec selectGoodsSpecById(int goodsId);

}
