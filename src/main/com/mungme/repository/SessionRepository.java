package com.mungme.repository;

import com.mungme.domain.Session;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by mungme on 2016. 9. 7..
 */
public interface SessionRepository extends JpaRepository<Session, Long> {
    List<Session> findByJSessionId(String jSessionId);

    @Transactional
    long deleteByJSessionId(String jSessionId);
}
