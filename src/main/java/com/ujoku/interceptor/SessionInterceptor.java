package com.ujoku.interceptor;

import com.labillusion.core.platform.exception.SessionTimeOutException;
import com.labillusion.core.platform.web.listener.SessionCollect;
import com.labillusion.core.util.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/**
 * Created by greg.chen on 14-10-21.
 */
public class SessionInterceptor extends HandlerInterceptorAdapter {

    public static final String SESSION_ID = "Session-Id";
    private final org.slf4j.Logger logger = org.slf4j.LoggerFactory.getLogger(SessionInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        logger.debug("SessionInterceptor ----------preHandle------------, URI=" +request.getRequestURI());

        if("/session/create".equals(request.getRequestURI()))
            return true;

        String sessionId = request.getHeader(SESSION_ID);
        if(!StringUtils.hasText(sessionId))
            return true;

        HttpSession session = SessionCollect.find(sessionId);
        if(session == null)
            throw new SessionTimeOutException("The session has expired");

        return true;
    }
}

@Retention(RetentionPolicy. RUNTIME)
@interface LoginRequired{

}
