package com.ujoku.service.impl;

import com.labillusion.core.util.StringUtils;
import com.ujoku.service.CdnService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

/**
 * Created by Greg on 14-10-25.
 */
@Service
public class CdnServiceImpl implements CdnService {
    @Value("#{configProperties['settings.cnd.domain']}")
    private String domain;

    public String builder(String uri){
        if(!StringUtils.hasText(uri))
            return null;

        uri = domain + uri;
        return uri;
    }
}
