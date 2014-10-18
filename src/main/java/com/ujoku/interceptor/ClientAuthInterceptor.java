package com.ujoku.interceptor;

import com.labillusion.core.platform.exception.UserAuthorizationException;
import com.labillusion.core.util.StringUtils;
import com.ujoku.domain.Client;
import com.ujoku.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by Administrator on 14-10-18.
 */
public class ClientAuthInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    private ClientService clientService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {



        String clientId = request.getHeader(AuthConstant.HEADER_CLIENT_ID);
        String secretKey = request.getHeader(AuthConstant.HEADER_Secret_Key);

        if(!StringUtils.hasText(clientId))
            throw new UserAuthorizationException("client-Id can not be null!");

        if(!StringUtils.hasText(secretKey))
            throw new UserAuthorizationException("secret-key can not be null!");

        List<Client> list = clientService.selectList(null);


        return true;
    }


}
