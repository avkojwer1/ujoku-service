package com.ujoku.view.builder;

import com.labillusion.core.platform.web.rest.view.BaseViewBuilder;
import com.ujoku.domain.Goods;
import com.ujoku.domain.GoodsSpec;
import com.ujoku.view.domain.GoodsView;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2014/10/19.
 */
@Component
public class GoodsViewBuilder extends BaseViewBuilder<Goods,GoodsView> {

    public GoodsView Create(Goods goods, GoodsSpec goodsSpec) throws Exception {
        GoodsView goodsView = super.Create(goods);
        goodsView.setStock(goodsSpec== null? 0:goodsSpec.getStock());
        return goodsView;
    }
}
