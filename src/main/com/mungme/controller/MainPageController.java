package com.mungme.controller;

import com.mungme.constant.UserType;
import com.mungme.domain.Session;
import com.mungme.domain.UserAccount;
import com.mungme.repository.*;
import com.mungme.util.EncryptUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by mungme on 2016. 9. 5..
 */
@Controller
@RequestMapping("")
public class MainPageController {
    @Autowired
    private SessionRepository sessionRepository;

    @Autowired
    private UserAccountRepository userAccountRepository;

    @RequestMapping(value = {""})
    public String login() {
        return "user_login";
    }

    @RequestMapping(value = {"/main"})
    public String mainPage() {
        return "index";
    }

    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String userJoin(HttpServletRequest request) {
        String userId = request.getParameter("userId");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        try {
            UserAccount userAccount = new UserAccount(userId, username, password, phone);
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
    public String userLogin(HttpServletRequest request) {
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        List<UserAccount> userAccountList = userAccountRepository.findByUserId(userId);

//        System.out.println(EncryptUtil.getSHA256(EncryptUtil.FIRST_KEY + userId + password + EncryptUtil.SECOND_KEY));
        if (userAccountList.size() > 0 && userAccountList.get(0).getUserId().equals(userId) && userAccountList.get(0).getHash().equals(EncryptUtil.getSHA256(EncryptUtil.FIRST_KEY + userId + password + EncryptUtil.SECOND_KEY))) {
            request.getSession().setAttribute("userId", userId);
            sessionRepository.save(new Session(request.getSession().getId(), userId, UserType.USER));
            return "redirect:" + "/main";
        }
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

