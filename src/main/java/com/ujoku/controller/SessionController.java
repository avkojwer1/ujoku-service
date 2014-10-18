package com.ujoku.controller;

import com.labillusion.core.platform.web.rest.RESTController;
import com.ujoku.domain.Session;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 14-10-18.
 */
@RestController
public class SessionController extends RESTController {

    @RequestMapping(value="/session/create", method = RequestMethod.POST)
    @ResponseBody
    public Session create(HttpServletRequest request) {
        Session session = new Session();
        HttpSession httpSession = request.getSession(false);
        //如果从cookie带有session id, session 不为空。注销这个session
        if(httpSession != null)
        {
            httpSession.invalidate();
            httpSession = request.getSession(true);
        }

        session.setId(httpSession.getId());

        return session;
    }


}
