package com.peterpet.controller;

import com.peterpet.repository.SessionRepository;
import com.peterpet.repository.UserAccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by blainechai on 2016. 12. 18..
 */
@Controller
@RequestMapping("book")
public class BookController {

    @Autowired
    private SessionRepository sessionRepository;

    @Autowired
    private UserAccountRepository userAccountRepository;

    @RequestMapping(value = {"common"})
    public ModelAndView commonPage(HttpServletRequest request) {

        String sessionId = request.getSession().getId();
        String userId = sessionRepository.findByJSessionId(sessionId).get(0).getUserId();
        ModelAndView modelAndView = new ModelAndView("user_main");
        modelAndView.addObject("userId", userId);
        modelAndView.addObject("userType", sessionRepository.findByJSessionId(sessionId).get(0).getType());
        return modelAndView;
    }
}
