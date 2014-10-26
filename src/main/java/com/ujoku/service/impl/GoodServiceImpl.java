package com.ujoku.service.impl;


import com.labillusion.core.database.base.mybatis.dao.BaseDao;
import com.labillusion.core.database.base.mybatis.service.base.impl.BaseServiceImpl;
import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.util.MessageSourceUtils;
import com.rits.cloning.Cloner;
import com.ujoku.dao.GoodsDao;
import com.ujoku.domain.Goods;
import com.ujoku.domain.GoodsSpec;
import com.ujoku.service.CdnService;
import com.ujoku.service.GoodsService;
import com.ujoku.service.GoodsSpecService;
import org.hamcrest.Matchers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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

    @Autowired
    private MessageSourceUtils resources;
    @Autowired
    private GoodsSpecService goodsSpecService;

    @Autowired
    private CdnService cdnService;

    @Override
    public List<Goods> selectList(){
        List<Goods> list = super.selectList(null);
        list.forEach(i->{
            i.setDefault_image(cdnService.builder(i.getDefault_image()));
            i.setDefault_image2(cdnService.builder(i.getDefault_image2()));
        });
        return list;
    }

    @Override
    public Goods selectById(int id) {
        List<Goods> list =  this.selectList();
        List<Goods> result = select(list, having(on(Goods.class).getGoods_id(), Matchers.equalTo(id)));
        if(result == null || result.size() == 0)
            throw new ResourceNotFoundException(resources.getMessage("goods.not.found"));

        Goods goods= result.get(0);
        GoodsSpec goodsSpec = goodsSpecService.selectGoodsSpecById(id);
        goods.setStock(goodsSpec.getStock());
        return  goods;
    }

    @Override
    public Goods selectById(List<Goods> list, int id) {
        List<Goods> result = select(list, having(on(Goods.class).getGoods_id(), Matchers.equalTo(id)));
        if(result == null || result.size() == 0)
            throw new ResourceNotFoundException(resources.getMessage("goods.not.found"));

        return  result.get(0);
    }
}
