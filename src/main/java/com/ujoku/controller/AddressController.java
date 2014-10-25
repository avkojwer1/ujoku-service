package com.ujoku.controller;

import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.platform.web.listener.SessionCollect;
import com.labillusion.core.platform.web.rest.RESTController;
import com.ujoku.domain.Address;
import com.ujoku.domain.Member;
import com.ujoku.interceptor.LoginRequired;
import com.ujoku.request.body.AddressForm;
import com.ujoku.service.AddressService;
import com.ujoku.view.domain.AddressView;
import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Greg on 14-10-25.
 */
@RestController
public class AddressController extends RESTController {

    @Autowired
    public AddressService service;

    @RequestMapping(value="/address/create", method = RequestMethod.POST)
    @ResponseBody
    @LoginRequired
    public Address Create(@Valid @RequestBody AddressForm form, HttpServletRequest request){
        HttpSession session = SessionCollect.find(request);
        Member member = (Member) session.getAttribute("Member");

        Address address = new Address();
        address.setUser_id(member.getUser_id());
        address.setAddress(form.getAddress());
        address.setConsignee(form.getConsignee());
        address.setPhone_mob(form.getPhone_mob());
        service.insert(address);
        return address;
    }

    @RequestMapping(value="/address", method = RequestMethod.GET)
    @ResponseBody
    @LoginRequired
    public AddressView getAddressByUserId(HttpServletRequest request){
        HttpSession session = SessionCollect.find(request);
        Member member = (Member) session.getAttribute("Member");
        Map<String, Object> query  = new HashMap<String, Object>();
        query.put("user_id", member.getUser_id());
        List<Address> addresses = service.selectList(query);
        if(addresses == null || addresses.size() == 0){
            throw new ResourceNotFoundException(resources.getMessage("address.not.found"));
        }

        return new AddressView(addresses);
    }

}
