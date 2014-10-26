package com.ujoku.view.domain;

import com.ujoku.domain.GCategory;
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

    private int count;

    public Refinement getRefinement() {
        return refinement;
    }

    public void setRefinement(Refinement refinement) {
        this.refinement = refinement;
    }

    private Refinement refinement;

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}


