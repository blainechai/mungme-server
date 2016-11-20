package com.mungme.listener;

/**
 * Created by mungme on 2016. 9. 18..
 */

import com.mungme.repository.SessionRepository;
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

        // here your code ...
        sessionRepository.deleteAll();
//        if (bookInfoRepository.findAll().size() < 1) {
//            for (int i = 1; i < 50; i++) {
//                bookInfoRepository.save(new BookInfo(1, "group" + i,
//                        new Date(new java.util.Date().getTime()),
//                        new Date(new java.util.Date().getTime()),
//                        "저자" + i,
//                        "참조저자" + i,
//                        false, true,
//                        "내용입니다" + i,
//                        "비고1-" + i,
//                        "비고2-" + i));
//            }
//        }
//
//        for (int i = 1; i < 51; i++) {
//            MainPageController.bookInfoList.add(new BookInfo((long) i, 1, "group" + i,
//                    new Date(new java.util.Date().getTime()),
//                    new Date(new java.util.Date().getTime()),
//                    "저자" + i,
//                    "참조저자" + i,
//                    false, true,
//                    "내용입니다" + i,
//                    "비고1-" + i,
//                    "비고2-" + i));
//        }

//        System.out.println(userTableOption.findAll().get(0).getCol1());
    }

} // class