package com.ujoku.controller;

import com.labillusion.core.platform.crypto.MD5;
import com.labillusion.core.platform.exception.UserAuthorizationException;
import com.labillusion.core.platform.web.listener.SessionCollect;
import com.labillusion.core.platform.web.rest.RESTController;
import com.ujoku.domain.Member;
import com.ujoku.domain.Visitor;
import com.ujoku.interceptor.VisitorInterceptor;
import com.ujoku.requestbody.LoginForm;
import com.ujoku.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;


/**
 * Created by Administrator on 2014/10/20.
 */
@RestController
public class MemberController extends RESTController {

    private static Logger logger = LoggerFactory.getLogger(MemberController.class);

    @Autowired
    public MemberService service;

    @RequestMapping(value="/login", method = RequestMethod.POST)
    @ResponseBody
    public String Login(@Valid @RequestBody LoginForm form, HttpServletRequest request) throws Exception {

        Map<String, Object> query = new HashMap<String, Object>();
        query.put("name",form.getUserName());
        Member member = (Member) service.selectOne(query);
        if(member == null || !MD5.encrypt(form.getPassword()).equals(member.getPassword()))
            throw new UserAuthorizationException("The User name or password did not match our records");
        //放入Session
        HttpSession session = SessionCollect.find(request.getHeader("Session-Id"));
        session.setAttribute("Member", member);

        Visitor visitor = (Visitor) request.getAttribute(VisitorInterceptor.CURRENT_VISITOR);
        visitor.setUser_id(member.getUser_id());

        return "Successfully";
    }


}
