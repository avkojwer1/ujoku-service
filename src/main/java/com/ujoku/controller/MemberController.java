package com.ujoku.controller;

import com.labillusion.core.platform.crypto.MD5;
import com.labillusion.core.platform.exception.ResourceNotFoundException;
import com.labillusion.core.platform.exception.SessionTimeOutException;
import com.labillusion.core.platform.exception.UserAuthorizationException;
import com.labillusion.core.platform.web.listener.SessionCollect;
import com.labillusion.core.platform.web.rest.RESTController;
import com.labillusion.core.platform.web.rest.exception.InvalidRequestException;
import com.labillusion.core.util.MessageSourceUtils;
import com.ujoku.domain.Member;
import com.ujoku.domain.Visitor;
import com.ujoku.interceptor.VisitorInterceptor;
import com.ujoku.request.body.LoginForm;
import com.ujoku.request.body.MemberCreateForm;
import com.ujoku.request.body.SendSMSForm;
import com.ujoku.service.MemberService;
import com.ujoku.service.SMSService;
import org.omg.CORBA.REBIND;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;


/**
 * Created by Greg on 2014/10/20.
 */
@RestController
public class MemberController extends RESTController {

    private static Logger logger = LoggerFactory.getLogger(MemberController.class);

    @Autowired
    public MemberService service;

    @Autowired
    public SMSService SMSService;
    @Autowired
    protected MessageSourceUtils messageSourceUtils;

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

    @RequestMapping(value="/logout", method = RequestMethod.POST)
    @ResponseBody
    public String Logout(HttpServletRequest request) throws Exception {

        HttpSession session = SessionCollect.find(request);
        if(session != null)
            session.invalidate();

        return "Successfully";
    }

    @RequestMapping(value="/member/create", method = RequestMethod.POST)
    @ResponseBody
    public Member Create(@Valid @RequestBody MemberCreateForm form, HttpServletRequest request) throws Exception {
        HttpSession session = SessionCollect.find(request);
        Calendar expiredTime = (Calendar) session.getAttribute("CaptchaExpiredTime");
        String captcha = (String) session.getAttribute("Captcha");
        //如果验证码时间过期, throw exception
        if(!form.getCaptcha().equals(captcha) || Calendar.getInstance().after(expiredTime))
            throw new InvalidRequestException(messageSourceUtils.getMessage("captcha.not.match"));

        Member member = getMember(form.getUserName());

        if(member != null)
           throw new InvalidRequestException(messageSourceUtils.getMessage("member.has.registered"));

        member = new Member();
        member.setUser_name(form.getUserName());
        member.setPassword(MD5.encrypt(form.getPassword()));
        member.setReg_time(System.currentTimeMillis() / 1000L);
        service.insert(member);

        return member;
    }

    /**
     * 检查用户是否存在
     * @param user_name
     */
    private Member getMember(String user_name) {
        Map<String, Object> query = new HashMap<String, Object>();
        query.put("user_name",user_name);
        Member member = (Member) service.selectOne(query);
        return member;
    }


    @RequestMapping(value="/member/sendSMS", method = RequestMethod.POST)
    @ResponseBody
    public String sendSMS(HttpServletRequest request, @Valid @RequestBody SendSMSForm form) throws IOException {

        HttpSession session = SessionCollect.find(request);
        if(session == null)
            throw new SessionTimeOutException(messageSourceUtils.getMessage("session.expired"));

        String captcha = SMSService.CalculateCaptcha();
        session.setAttribute("Captcha",captcha);

        Calendar now = Calendar.getInstance();
        now.add(Calendar.MINUTE, 1);
        session.setAttribute("CaptchaExpiredTime",now);

        SMSService.toYiChi(form.getPhone(), captcha);

        return "Successfully";
    }


}
