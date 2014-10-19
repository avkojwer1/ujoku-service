package com.ujoku.controller;

import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.platform.web.rest.RESTController;
import com.ujoku.domain.Goods;
import com.ujoku.service.GoodsService;
import com.ujoku.view.builder.GoodsViewBuilder;
import com.ujoku.view.domain.GoodsView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by greg on 2014/10/19.
 */
@RestController
public class GoodsController extends RESTController {

    @Autowired
    private GoodsService service;
    @Autowired
    private GoodsViewBuilder goodsViewBuilder;

    @RequestMapping(value="/goods/{id}", method = RequestMethod.GET)
    @ResponseBody
    public GoodsView getGoodById(@PathVariable int id) throws Exception {
        List<Goods> list = service.selectList(null);

        for (Goods item : list){
            if(item.getGoods_id() == id){
                return goodsViewBuilder.Create(item);
            }
        }

        throw new ResourceNotFoundException("Can not found goods.");

    }

}
