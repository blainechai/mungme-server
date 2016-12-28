package com.peterpet.exception;

/**
 * Created by blainechai on 2016. 12. 26..
 */
public class UserIdNotFoundException extends Exception {
    public UserIdNotFoundException() {
    }

    //Constructor that accepts a message
    public UserIdNotFoundException(String message) {
        super(message);
    }
}
