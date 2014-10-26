package com.ujoku.service.impl;


import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.util.MessageSourceUtils;
import com.ujoku.dao.GCategoryDao;
import com.ujoku.dao.GoodsDao;
import com.ujoku.domain.GCategory;
import com.ujoku.domain.Goods;
import com.ujoku.domain.GoodsSpec;
import com.ujoku.service.CdnService;
import com.ujoku.service.GCategoryService;
import com.ujoku.service.GoodsService;
import com.ujoku.service.GoodsSpecService;
import org.hamcrest.Matchers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static ch.lambdaj.Lambda.*;

/**
 * Created by Greg on 2014/10/17.
 */
@Service
public class GCategoryServiceImpl extends BaseServiceImpl<GCategory> implements GCategoryService<GCategory> {

    @Autowired
    private GCategoryDao gCategoryDao;

    @Override
    protected BaseDao<GCategory> getBaseDao() {
        return this.gCategoryDao;
    }
}
