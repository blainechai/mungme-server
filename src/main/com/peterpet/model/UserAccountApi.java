package com.peterpet.model;

import com.peterpet.domain.UserAccount;
//import com.peterpet.domain.UserGroup;

import java.sql.Date;
import java.util.List;

/**
 * Created by blainechai on 2016. 11. 23..
 */
public class UserAccountApi {
    private String userId;
    private String username;
    //    private String hash;
    private String phone;
    private Date createDate;
    private String type;
//    private List<UserGroup> userGroups;

    public UserAccountApi(String userId, String username, String phone, Date createDate, String type) {
        this.userId = userId;
        this.username = username;
        this.phone = phone;
        this.createDate = createDate;
        this.type = type;
    }

    public UserAccountApi(UserAccount userAccount) {
        this.userId = userAccount.getUserId();
        this.username = userAccount.getUsername();
        this.phone = userAccount.getPhone();
        this.createDate = userAccount.getCreateDate();
        this.type = userAccount.getType();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

//    public String getHash() {
//        return hash;
//    }
//
//    public void setHash(String hash) {
//        this.hash = hash;
//    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
