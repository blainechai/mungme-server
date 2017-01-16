package com.peterpet.controller.shop;

import com.peterpet.constant.MenuConstant;
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
@RequestMapping("main/shop")
public class ShopMController {

    private final static String MENU_NAME = MenuConstant.SHOP;

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
            ModelAndView modelAndView = new ModelAndView("shop/shop-info");
            modelAndView.addObject("userId", userId);
            modelAndView.addObject("userType", userAccount.getType());
            modelAndView.addObject("menu", MENU_NAME);
            modelAndView.addObject("submenu", MenuConstant.SHOP_INFO);
            return modelAndView;
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }

    @RequestMapping(value = {"info"})
    public ModelAndView commonPage(HttpServletRequest request) {
        try {
            UserAccount userAccount = new LoginUtil(userAccountRepository, sessionRepository).getUserAccount(request);
//            String sessionId = request.getSession().getId();
            String userId = userAccount.getUserId();
            ModelAndView modelAndView = new ModelAndView("shop/shop-info");
            modelAndView.addObject("userId", userId);
            modelAndView.addObject("userType", userAccount.getType());
            modelAndView.addObject("menu", MENU_NAME);
            modelAndView.addObject("submenu", MenuConstant.SHOP_INFO);
            return modelAndView;
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }

    @RequestMapping(value = {"service"})
    public ModelAndView resourcePage(HttpServletRequest request) {
        try {
            UserAccount userAccount = new LoginUtil(userAccountRepository, sessionRepository).getUserAccount(request);
//            String sessionId = request.getSession().getId();
            String userId = userAccount.getUserId();
            ModelAndView modelAndView = new ModelAndView("shop/shop-service");
            modelAndView.addObject("userId", userId);
            modelAndView.addObject("userType", userAccount.getType());
            modelAndView.addObject("menu", MENU_NAME);
            modelAndView.addObject("submenu", MenuConstant.SHOP_SERVICE);
            return modelAndView;
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }

    @RequestMapping(value = {"designer"})
    public ModelAndView smsPage(HttpServletRequest request) {
        try {
            UserAccount userAccount = new LoginUtil(userAccountRepository, sessionRepository).getUserAccount(request);
//            String sessionId = request.getSession().getId();
            String userId = userAccount.getUserId();
            ModelAndView modelAndView = new ModelAndView("shop/shop-designer");
            modelAndView.addObject("userId", userId);
            modelAndView.addObject("userType", userAccount.getType());
            modelAndView.addObject("menu", MENU_NAME);
            modelAndView.addObject("submenu", MenuConstant.SHOP_DESIGNER);
            return modelAndView;
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }

    @RequestMapping(value = {"day-off"})
    public ModelAndView dayOffPage(HttpServletRequest request) {
        try {
            UserAccount userAccount = new LoginUtil(userAccountRepository, sessionRepository).getUserAccount(request);
//            String sessionId = request.getSession().getId();
            String userId = userAccount.getUserId();
            ModelAndView modelAndView = new ModelAndView("shop/shop-day-off");
            modelAndView.addObject("userId", userId);
            modelAndView.addObject("userType", userAccount.getType());
            modelAndView.addObject("menu", MENU_NAME);
            modelAndView.addObject("submenu", MenuConstant.SHOP_DAY_OFF);
            return modelAndView;
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }

    @RequestMapping(value = {"event"})
    public ModelAndView eventPage(HttpServletRequest request) {
        try {
            UserAccount userAccount = new LoginUtil(userAccountRepository, sessionRepository).getUserAccount(request);
//            String sessionId = request.getSession().getId();
            String userId = userAccount.getUserId();
            ModelAndView modelAndView = new ModelAndView("shop/shop-event");
            modelAndView.addObject("userId", userId);
            modelAndView.addObject("userType", userAccount.getType());
            modelAndView.addObject("menu", MENU_NAME);
            modelAndView.addObject("submenu", MenuConstant.SHOP_EVENT);
            return modelAndView;
        } catch (UserIdNotFoundException e) {
            e.printStackTrace();
        } catch (SessionNotFoundException e) {
            e.printStackTrace();
        }
        return new ModelAndView("error");
    }
}
