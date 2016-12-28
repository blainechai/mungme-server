package com.peterpet.controller.shop;

import com.peterpet.domain.UserAccount;
import com.peterpet.exception.SessionNotFoundException;
import com.peterpet.exception.UserIdNotFoundException;
import com.peterpet.repository.SessionRepository;
import com.peterpet.repository.UserAccountRepository;
import com.peterpet.util.LoginUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by blainechai on 2016. 12. 18..
 */
@Controller
@RequestMapping("main/reservation")
public class ReservationMController {

    @Autowired
    private SessionRepository sessionRepository;

    @Autowired
    private UserAccountRepository userAccountRepository;



    @RequestMapping(value = {""})
    public ModelAndView mainPage(HttpServletRequest request) {
        try {
            LoginUtil loginUtil = new LoginUtil(userAccountRepository, sessionRepository);
            UserAccount userAccount = loginUtil.getUserAccount(request);
        /*String sessionId = request.getSession().getId();
        String userId = sessionRepository.findByJSessionId(sessionId).get(0).getUserId();*/
            ModelAndView modelAndView = new ModelAndView("reservation/reservation_main");
            modelAndView.addObject("userId", userAccount.getUserId());
            modelAndView.addObject("userType", userAccount.getType());
            return modelAndView;
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }

    @RequestMapping(value = {"book"})
    public ModelAndView bookPage(HttpServletRequest request) {
        try {
            LoginUtil loginUtil = new LoginUtil(userAccountRepository, sessionRepository);
            UserAccount userAccount = loginUtil.getUserAccount(request);
        /*String sessionId = request.getSession().getId();
        String userId = sessionRepository.findByJSessionId(sessionId).get(0).getUserId();*/
            ModelAndView modelAndView = new ModelAndView("reservation/reservation_main");
            modelAndView.addObject("userId", userAccount.getUserId());
            modelAndView.addObject("userType", userAccount.getType());
            return modelAndView;
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }

    @RequestMapping(value = {"book-list"})
    public ModelAndView bookListPage(HttpServletRequest request) {
        try {
            LoginUtil loginUtil = new LoginUtil(userAccountRepository, sessionRepository);
            UserAccount userAccount = loginUtil.getUserAccount(request);
        /*String sessionId = request.getSession().getId();
        String userId = sessionRepository.findByJSessionId(sessionId).get(0).getUserId();*/
            ModelAndView modelAndView = new ModelAndView("reservation/reservation_main");
            modelAndView.addObject("userId", userAccount.getUserId());
            modelAndView.addObject("userType", userAccount.getType());
            return modelAndView;
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }

    @RequestMapping(value = {"config"})
    public ModelAndView configPage(HttpServletRequest request) {
        try {
            LoginUtil loginUtil = new LoginUtil(userAccountRepository, sessionRepository);
            UserAccount userAccount = loginUtil.getUserAccount(request);
        /*String sessionId = request.getSession().getId();
        String userId = sessionRepository.findByJSessionId(sessionId).get(0).getUserId();*/
            ModelAndView modelAndView = new ModelAndView("reservation/reservation_main");
            modelAndView.addObject("userId", userAccount.getUserId());
            modelAndView.addObject("userType", userAccount.getType());
            return modelAndView;
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }
}
