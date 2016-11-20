package com.mungme.interceptor;

import com.mungme.constant.UserType;
import com.mungme.domain.Session;
import com.mungme.repository.SessionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by mungme on 2016. 9. 18..
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
    @Autowired
    SessionRepository sessionRepository;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        try {
            List<Session> list = sessionRepository.findByJSessionId(request.getSession().getId());
            if (list.size() > 0 && (list.get(0).getType().equals(UserType.USER)||list.get(0).getType().equals(UserType.ADMIN))) {
                return true;
            }
            response.sendRedirect("/");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
