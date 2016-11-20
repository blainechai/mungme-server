package com.mungme.repository;

import com.mungme.domain.UserAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * private String userId;
 * private String username;
 * private String hash;
 * private String phone;
 * private Date createDate;
 * */

public interface UserAccountRepository extends JpaRepository<UserAccount, Long> {

    List<UserAccount> findByUsername(String username);

    List<UserAccount> findByUserId(String userId);

    List<UserAccount> findByhash(String hash);

    @Transactional
    long deleteByUserId(String userId);
}
