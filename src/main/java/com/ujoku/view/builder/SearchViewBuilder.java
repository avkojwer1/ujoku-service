package com.ujoku.view.builder;

import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.platform.web.rest.view.BaseViewBuilder;
import com.ujoku.domain.Goods;
import com.ujoku.view.domain.GoodsView;
import com.ujoku.view.domain.Refinement;
import com.ujoku.view.domain.SearchView;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
/**
 * Created by Administrator on 2014/10/19.
 */
@Component
public class SearchViewBuilder extends BaseViewBuilder<Goods,GoodsView> {

      public SearchView builderSearchView(List<Goods> list, Refinement refinement) throws Exception {
          SearchView searchView = new SearchView();
          searchView.setList(new ArrayList<GoodsView>());
          for(Goods item : list){
              searchView.getList().add(Create(item));
          }
          searchView.setCount(list.size());
          searchView.setRefinement(refinement);
          return searchView;
      }

}
