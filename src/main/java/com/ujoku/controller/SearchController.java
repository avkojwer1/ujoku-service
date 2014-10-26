package com.ujoku.controller;

import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.platform.web.rest.RESTController;
import com.labillusion.core.platform.web.rest.exception.InvalidRequestException;
import com.labillusion.core.util.StringUtils;
import com.rits.cloning.Cloner;
import com.ujoku.domain.Goods;
import com.ujoku.request.body.SearchForm;
import com.ujoku.service.GoodsService;
import com.ujoku.view.builder.SearchViewBuilder;
import com.ujoku.view.domain.SearchView;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

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

    @Autowired @Qualifier("cloner")
    private Cloner cloner;

    @RequestMapping(value="/search", method = RequestMethod.POST)
    @ResponseBody
    public SearchView search(@Valid @RequestBody SearchForm form) throws Exception {
        logger.debug(form.toString());

        List<Goods> list = goodsService.selectList();
        List<Goods> result =  cloner.deepClone(list);

        if(form.getCategoryId() > 0)
            result = list.stream().filter(
                    g->g.getCate_id() == form.getCategoryId()
                    || g.getCate_id_1() == form.getCategoryId()
                    || g.getCate_id_2() == form.getCategoryId()
                    || g.getCate_id_3() == form.getCategoryId()
                    || g.getCate_id_4() == form.getCategoryId()
            ).collect(Collectors.toList());

        if(result == null || result.size() == 0)
            throw new ResourceNotFoundException(resources.getMessage("search.not.found"));

        if(StringUtils.hasText(form.getOrder())){
            String[] sortArr = form.getOrder().split(" ");
            String sortField = null;
            String sort = null;
            if(sortArr.length == 2){
                sortField = sortArr[0];
                sort =  form.getOrder().split(" ")[1];
            }


            final String finalSortField = sortField;
            final String finalSort = sort;
            Collections.sort(result, new Comparator<Goods>(){

                public int compare(Goods g1, Goods g2){
                    if("price".equals(finalSortField))
                    {
                        //从高到低
                        if("desc".equals(finalSort))
                            return g2.getPrice().compareTo(g1.getPrice());
                        //从低到高
                        return g1.getPrice().compareTo(g2.getPrice());
                    }
                    else
                        return g1.getPrice().compareTo(g2.getPrice());
                }

            });
        }

        return searchViewBuilder.builderSearchView(result);
    }

}
