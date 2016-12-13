package com.peterpet.listener;

/**
 * Created by peterpet on 2016. 9. 18..
 */

import com.peterpet.repository.SessionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

@Component
public class ApplicationStartupListener implements ApplicationListener<ContextRefreshedEvent> {

    @Autowired
    SessionRepository sessionRepository;

    /**
     * This method is called during Spring's startup.
     *
     * @param event Event raised when an ApplicationContext gets initialized or
     *              refreshed.
     */
    @Override
    public void onApplicationEvent(final ContextRefreshedEvent event) {

        sessionRepository.deleteAll();
    }

} // class