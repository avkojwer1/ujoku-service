package com.ujoku.interceptor;

import com.labillusion.core.platform.exception.SessionTimeOutException;
import com.labillusion.core.platform.exception.UserAuthorizationException;
import com.labillusion.core.platform.web.listener.SessionCollect;
import com.labillusion.core.util.StringUtils;
import com.ujoku.domain.Member;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/**
 * Created by greg.chen on 14-10-21.
 */
public class SessionInterceptor extends HandlerInterceptorAdapter {


    private final org.slf4j.Logger logger = org.slf4j.LoggerFactory.getLogger(SessionInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        logger.debug("SessionInterceptor ----------preHandle------------, URI=" +request.getRequestURI());

        if("/session/create".equals(request.getRequestURI()))
            return true;

        String sessionId = request.getHeader(SessionCollect.SESSION_ID);
        if(!StringUtils.hasText(sessionId))
            return true;

        HttpSession session = SessionCollect.find(sessionId);
        if(session == null)
            throw new SessionTimeOutException("The session has expired");
        //如果Annotation标识有LoginRequired, 判断method是否含有customer session
        if(((HandlerMethod) handler).getMethod().isAnnotationPresent(LoginRequired.class)){
            Member member = (Member) session.getAttribute("Member");

            if(member == null)
                throw new UserAuthorizationException("login required.");
        }

        return true;
    }
}

