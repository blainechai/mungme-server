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
@RequestMapping("main/customer")
public class CustomerMController {
    @Autowired
    private SessionRepository sessionRepository;

    @Autowired
    private UserAccountRepository userAccountRepository;

    @RequestMapping(value = {""})
    public ModelAndView mainPage(HttpServletRequest request) {
        try {
            UserAccount userAccount = new LoginUtil(userAccountRepository, sessionRepository).getUserAccount(request);
//            String sessionId = request.getSession().getId();
            String userId = userAccount.getUserId();
            ModelAndView modelAndView = new ModelAndView("customer/customer-manage");
            modelAndView.addObject("userId", userId);
            modelAndView.addObject("userType", userAccount.getType());
            return modelAndView;
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }

    @RequestMapping(value = {"manage"})
    public ModelAndView commonPage(HttpServletRequest request) {
        try {
            UserAccount userAccount = new LoginUtil(userAccountRepository, sessionRepository).getUserAccount(request);
//            String sessionId = request.getSession().getId();
            String userId = userAccount.getUserId();
            ModelAndView modelAndView = new ModelAndView("customer/customer-manage");
            modelAndView.addObject("userId", userId);
            modelAndView.addObject("userType", userAccount.getType());
            return modelAndView;
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }

//    @RequestMapping(value = {"resource"})
//    public ModelAndView resourcePage(HttpServletRequest request) {
//        try {
//            UserAccount userAccount = new LoginUtil(userAccountRepository, sessionRepository).getUserAccount(request);
////            String sessionId = request.getSession().getId();
//            String userId = userAccount.getUserId();
//            ModelAndView modelAndView = new ModelAndView("customer/customer_main");
//            modelAndView.addObject("userId", userId);
//            modelAndView.addObject("userType", userAccount.getType());
//            return modelAndView;
//        } catch (UserIdNotFoundException e) {
//            e.printStackTrace();
//        } catch (SessionNotFoundException e) {
//            e.printStackTrace();
//        }
//        return new ModelAndView("error");
//    }
}
