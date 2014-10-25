package com.ujoku.controller;

import com.labillusion.core.platform.web.rest.RESTController;
import com.ujoku.domain.Goods;
import com.ujoku.request.body.SearchFilter;
import com.ujoku.service.CdnService;
import com.ujoku.service.GoodsService;
import com.ujoku.view.builder.SearchViewBuilder;
import com.ujoku.view.domain.SearchView;
import org.hamcrest.Matchers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

import static ch.lambdaj.Lambda.*;

/**
 * Created by greg.chen on 14-10-20.
 */
@RestController
public class SearchController extends RESTController {

    private static Logger logger = LoggerFactory.getLogger(SearchController.class);

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private SearchViewBuilder searchViewBuilder;

    @RequestMapping(value="/search", method = RequestMethod.POST)
    @ResponseBody
    public SearchView search(@Valid @RequestBody SearchFilter searchFilter) throws Exception {
        logger.debug(searchFilter.toString());

        List<Goods> list = goodsService.selectList();


        List<Goods> result = new ArrayList<Goods>();
        if(searchFilter.getCategoryId() > 0)
            result.addAll(select(list, having(on(Goods.class).getCate_id(), Matchers.equalTo(searchFilter.getCategoryId()))));

        return searchViewBuilder.builderSearchView(result);
    }

}
