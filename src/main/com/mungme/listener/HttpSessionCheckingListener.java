package com.mungme.listener;

import com.mungme.repository.SessionRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Created by mungme on 2016. 9. 7..
 */

public class HttpSessionCheckingListener implements HttpSessionListener {

    //    @Autowired
    private SessionRepository sessionRepository;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Override
    public void sessionCreated(HttpSessionEvent event) {
//        if (logger.isDebugEnabled()) {
        logger.info("Session ID".concat(event.getSession().getId()).concat(" created at ").concat(new java.util.Date().toString()));
//        }
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent event) {
//        if (logger.isDebugEnabled()) {

        HttpSession session = event.getSession();
        logger.info("Session ID".concat(event.getSession().getId()).concat(" destroyed at ").concat(new java.util.Date().toString()));
//        }
        WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(session.getServletContext());
        sessionRepository = (SessionRepository) context.getBean("sessionRepository", SessionRepository.class);
        if (sessionRepository.findByJSessionId(event.getSession().getId()).size() > 0) {
            sessionRepository.deleteByJSessionId(event.getSession().getId());
        }
    }
}
