package com.ujoku.view.domain;

import com.ujoku.domain.Goods;

import java.util.List;
/**
 * Created by greg.chen on 14-10-20.
 */
public class SearchView {

    public List<GoodsView> getList() {
        return list;
    }

    public void setList(List<GoodsView> list) {
        this.list = list;
    }

    private List<GoodsView> list;

}
