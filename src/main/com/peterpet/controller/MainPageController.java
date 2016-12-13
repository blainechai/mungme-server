package com.peterpet.controller;

import com.peterpet.constant.UserType;
import com.peterpet.domain.Session;
import com.peterpet.domain.UserAccount;
import com.peterpet.repository.*;
import com.peterpet.util.EncryptUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

import static com.peterpet.util.LoggerUtil.*;

/**
 * Created by peterpet on 2016. 9. 5..
 */
@Controller
@RequestMapping("")
public class MainPageController {
    @Autowired
    private SessionRepository sessionRepository;

    @Autowired
    private UserAccountRepository userAccountRepository;

    @RequestMapping(value = {""})
    public ModelAndView login(HttpServletRequest request) {
        if (sessionRepository.findByJSessionId(request.getSession().getId()).size() > 0) {
            return new ModelAndView("redirect:" + "/main");
        }
        Map<String, ?> fm = RequestContextUtils.getInputFlashMap(request);
        if (fm != null) {
            String message = (String) fm.get("loginFail");
            return new ModelAndView("user_login").addObject("loginFail", message);
        } else {
            return new ModelAndView("user_login")
                    .addObject("adminAccountSize", userAccountRepository.findByType(UserType.ADMIN).size())
                    .addObject("loginFail", "false");
        }
    }

    @RequestMapping(value = {"/main"})
    public ModelAndView mainPage(HttpServletRequest request) {

        String sessionId = request.getSession().getId();
        String userId = sessionRepository.findByJSessionId(sessionId).get(0).getUserId();
        ModelAndView modelAndView = new ModelAndView("user_main");
        modelAndView.addObject("userId", userId);
        modelAndView.addObject("userType", sessionRepository.findByJSessionId(sessionId).get(0).getType());
        return modelAndView;
    }

    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String userJoin(HttpServletRequest request) {
        String userId = request.getParameter("userId");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        try {
            UserAccount userAccount = new UserAccount(userId, username, password, phone, UserType.USER);
            userAccountRepository.save(userAccount);
        } catch (Exception e) {
            return "redirect:" + "/error";
        }
        return "redirect:" + "/";
    }

    @RequestMapping(value = "/register")
    public String registerPage(HttpServletRequest request) {
        return "user_join";
    }


    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String userLogin(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        List<UserAccount> userAccountList = userAccountRepository.findByUserId(userId);

//        System.out.println(EncryptUtil.getSHA256(EncryptUtil.FIRST_KEY + userId + password + EncryptUtil.SECOND_KEY));
        if (userAccountList.size() > 0 && userAccountList.get(0).getUserId().equals(userId) && userAccountList.get(0).getHash().equals(EncryptUtil.getSHA256(EncryptUtil.FIRST_KEY + userId + password + EncryptUtil.SECOND_KEY))) {
            request.getSession().setAttribute("userId", userId);
            sessionRepository.save(new Session(request.getSession().getId(), userId, userAccountList.get(0).getType()));
            log(userId, "로그인");
            return "redirect:" + "/main";
        }
        redirectAttributes.addFlashAttribute("loginFail", "true");
        return "redirect:" + "/";
    }

    @RequestMapping(value = "/logout")
    public String userLogout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "redirect:" + "/";
    }

    @RequestMapping(value = "/error")
    public String errorPage() {
        return "error";
    }

    @RequestMapping(value = "/test")
    public String testPage() {
        return "test";
    }

}

