package com.ujoku.view.domain;

import com.ujoku.domain.GCategory;

import java.util.List;

public class Refinement{
    List<GCategory> categories;

    public List<GCategory> getCategoriesList() {
        return categories;
    }

    public void setCategories(List<GCategory> categoriesList) {
        if(categoriesList == null || categoriesList.size() == 0)
            return;
        this.categories = categoriesList;
    }
}
