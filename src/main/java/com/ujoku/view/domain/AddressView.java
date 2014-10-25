package com.ujoku.view.domain;

import com.ujoku.domain.Address;

import java.util.List;

/**
 * Created by Greg on 14-10-25.
 */
public class AddressView {

    public List<Address> list;

    public AddressView(List<Address> addresses) {
        this.list = addresses;
    }

    public List<Address> getList() {
        return list;
    }

    public void setList(List<Address> list) {
        this.list = list;
    }
}
