package com.ujoku.interceptor;

import com.labillusion.core.platform.exception.UserAuthorizationException;
import com.labillusion.core.util.AssertUtils;
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

        String uri = request.getRequestURI();

        if(WhiteList.check(uri))
            return true;

        String clientId = request.getHeader(AuthConstant.HEADER_CLIENT_ID);
        String secretKey = request.getHeader(AuthConstant.HEADER_Secret_Key);

        AssertUtils.assertHasText(clientId, "client-Id can not be null!");
        AssertUtils.assertHasText(secretKey, "secret-key can not be null!");

        List<Client> list = clientService.selectList(null);

        CheckClient(clientId, secretKey, list);

        return true;
    }

    /**
     * 进行数据库匹配
     * @param clientId
     * @param secretKey
     * @param list
     */
    private void CheckClient(String clientId, String secretKey, List<Client> list) {
        boolean check = false;

        for(Client item : list){
            if(StringUtils.equals(clientId, item.getClientName()) && StringUtils.equals(secretKey, item.getSecretKey())){
                check = true;
            }
        }

        if(!check){
            throw new UserAuthorizationException("invalid client-id or secret-key");

        }
    }


}
