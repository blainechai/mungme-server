package com.peterpet.interceptor;

import com.peterpet.constant.UserType;
import com.peterpet.domain.Session;
import com.peterpet.repository.SessionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class AdminInterceptor extends HandlerInterceptorAdapter {
    @Autowired
    SessionRepository sessionRepository;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        try {
            List<Session> list = sessionRepository.findByJSessionId(request.getSession().getId());
            if (list.size() > 0 && list.get(0).getType().equals(UserType.ADMIN)) {
                return true;
            }
            response.sendRedirect("/admin");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}