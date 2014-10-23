package com.ujoku.interceptor;

import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.platform.http.HTTPHeaders;
import com.labillusion.core.util.MessageSourceUtils;
import com.labillusion.core.util.StringUtils;
import com.ujoku.domain.Visitor;
import com.ujoku.service.ClientService;
import com.ujoku.service.VisitorService;
import org.apache.log4j.spi.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Logger;

/**
 * Created by Administrator on 14-10-18.
 */
public class VisitorInterceptor extends HandlerInterceptorAdapter {

    public static final String CURRENT_VISITOR = "currentVisitor";

    private final org.slf4j.Logger logger = org.slf4j.LoggerFactory.getLogger(VisitorInterceptor.class);

    @Autowired
    private VisitorService service;

    @Autowired
    private MessageSourceUtils resources;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        logger.debug("VisitorInterceptor ---------- preHandle -----------------------------------------------");

        String visitorId = request.getHeader(HTTPHeaders.VISITOR_ID);
        if(!StringUtils.hasText(visitorId)){
            return true;
        }

        Visitor visitor = (Visitor) service.selectById(visitorId);
        if(visitor == null)
            throw new ResourceNotFoundException( resources.getMessage("visitor.not.found"));

        visitor.setUser_agent(request.getHeader("User-Agent"));
        String ipAddress = request.getHeader("X-FORWARDED-FOR");
        if (ipAddress == null) {
            ipAddress = request.getRemoteAddr();
        }
        visitor.setLast_ip(ipAddress);

        request.setAttribute(CURRENT_VISITOR, visitor);
        return true;
    }


    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        logger.debug("VisitorInterceptor ----- afterCompletion -------------------------------------");
        Visitor visitor = (Visitor) request.getAttribute(CURRENT_VISITOR);
        service.update(visitor);
    }

}
