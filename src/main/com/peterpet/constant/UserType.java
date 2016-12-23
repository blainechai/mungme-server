package com.peterpet.constant;

/**
 * Created by peterpet on 2016. 9. 8..
 */
public final class UserType {
    public final static String ADMIN = "admin";
    public final static String USER = "shop";

    public static boolean isUser(String type) {
        if (type.equals(ADMIN)) return true;
        if (type.equals(USER)) return true;
        return false;
    }

    public static boolean isAdminUser(String type){
        return type.equals(ADMIN);
    }
}
