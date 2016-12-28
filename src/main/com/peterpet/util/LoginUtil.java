package com.peterpet.util;

import com.peterpet.domain.Session;
import com.peterpet.domain.UserAccount;
import com.peterpet.exception.SessionNotFoundException;
import com.peterpet.exception.UserIdNotFoundException;
import com.peterpet.repository.SessionRepository;
import com.peterpet.repository.UserAccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by blainechai on 2016. 12. 26..
 */
public final class LoginUtil {
    //    @Autowired
    private UserAccountRepository userAccountRepository;

    //    @Autowired
    private SessionRepository sessionRepository;

    public LoginUtil(UserAccountRepository userAccountRepository, SessionRepository sessionRepository) {
//        WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE
//        sessionRepository = (SessionRepository) context.getBean("sessionRepository", SessionRepository.class);
        this.userAccountRepository = userAccountRepository;
        this.sessionRepository = sessionRepository;
    }

    /**
     * @param request
     * @return userId
     */
    public String getUserId(HttpServletRequest request) throws SessionNotFoundException {
        List<Session> sessions = sessionRepository.findByJSessionId(request.getSession().getId());
        String userId = null;
        if (sessions.size() > 0) {
            userId = sessions.get(0).getUserId();
            return userId;
        } else {
            throw new SessionNotFoundException();
        }
    }

    public UserAccount getUserAccount(HttpServletRequest request) throws SessionNotFoundException, UserIdNotFoundException {
//        String sessionId = request.getSession().getId();
        List<Session> sessions = sessionRepository.findByJSessionId(request.getSession().getId());
        UserAccount userAccount = null;
        if (sessions.size() > 0) {
            String userId = sessions.get(0).getUserId();
            List<UserAccount> userAccounts = userAccountRepository.findByUserId(userId);
            if (userAccounts.size() > 0) {
                return userAccounts.get(0);
            } else {
                throw new UserIdNotFoundException();
            }

        } else {
            throw new SessionNotFoundException();
        }
    }
}
