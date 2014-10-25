package com.ujoku.service.test;

import com.ujoku.base.BaseTest;
import com.ujoku.domain.Address;
import com.ujoku.service.AddressService;
import junit.framework.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Greg on 14-10-25.
 */
public class AddressServiceTest extends BaseTest {

    @Autowired
    private AddressService service;

    @Test
    public void selectById(){
        service.selectById("1");
    }

    @Test
    public void select(){
        Map<String, Object> query = new HashMap<String, Object>();
        query.put("user_id",14);
        List<Address> list = service.selectList(query);
        Assert.assertTrue(list.size() > 0);
    }

    @Test
    public void add(){
        Address address = new Address();
        address.setUser_id(15);
        address.setConsignee("test buyer");
        address.setAddress("厦门思明区");

        service.insert(address);
    }
}
