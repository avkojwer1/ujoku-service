package com.ujoku.interceptor;

import com.labillusion.core.platform.exception.SessionTimeOutException;
import com.labillusion.core.platform.exception.UserAuthorizationException;
import com.labillusion.core.platform.http.HTTPHeaders;
import com.labillusion.core.platform.web.listener.SessionCollect;
import com.labillusion.core.util.MessageSourceUtils;
import com.labillusion.core.util.StringUtils;
import com.ujoku.domain.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by greg.chen on 14-10-21.
 */
public class SessionInterceptor extends HandlerInterceptorAdapter {

    private final org.slf4j.Logger logger = org.slf4j.LoggerFactory.getLogger(SessionInterceptor.class);

    @Autowired
    private MessageSourceUtils resources;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        logger.debug("SessionInterceptor ----------preHandle------------, URI=" +request.getRequestURI());

        String uri = request.getRequestURI();
        if(WhiteList.check(uri))
            return true;

        String sessionId = request.getHeader(HTTPHeaders.SESSION_ID);
        //如果Annotation标识有LoginRequired, 判断method是否含有customer session
        checkLoginRequired(handler, sessionId);

        if("/session/create".equals(request.getRequestURI()))
            return true;

        if(!StringUtils.hasText(sessionId))
            return true;

        HttpSession session = SessionCollect.find(sessionId);
        if(session == null)
            throw new SessionTimeOutException(resources.getMessage("session.expired"));

        return true;
    }

    private void checkLoginRequired(Object handler, String sessionId) {
        String message = resources.getMessage("session.login.required");

        if(((HandlerMethod) handler).getMethod().isAnnotationPresent(LoginRequired.class)){
            if(!StringUtils.hasText(sessionId))

                throw new UserAuthorizationException(message);

            HttpSession session = SessionCollect.find(sessionId);
            if(session == null)
                throw new UserAuthorizationException(message);

            Member member = (Member) session.getAttribute("Member");
            if(member == null)
                throw new UserAuthorizationException(message);
        }
    }
}

