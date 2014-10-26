package com.ujoku.view.domain;

import com.ujoku.domain.GCategory;

import java.util.List;

public class Refinement{
    List<GCategory> categoriesList;

    public List<GCategory> getCategoriesList() {
        return categoriesList;
    }

    public void setCategoriesList(List<GCategory> categoriesList) {
        if(categoriesList == null || categoriesList.size() == 0)
            return;
        this.categoriesList = categoriesList;
    }
}
