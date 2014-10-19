package com.ujoku.view.builder.test;

import com.ujoku.domain.Goods;
import com.ujoku.view.builder.GoodsViewBuilder;
import com.ujoku.view.domain.GoodsView;
import org.junit.Test;

/**
 * Created by Greg on 2014/10/19.
 */
public class GoodsViewBuilderTest {

    @Test
    public void test1() throws Exception {
        Goods goods = new Goods();
        goods.setBrand("hello");

        GoodsViewBuilder builder = new GoodsViewBuilder();

        System.out.print(builder.Create(goods).getBrand());
    }
}
