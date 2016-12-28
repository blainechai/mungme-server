package com.peterpet.exception;

/**
 * Created by blainechai on 2016. 12. 26..
 */
public class SessionNotFoundException extends Exception {
    public SessionNotFoundException() {
    }

    //Constructor that accepts a message
    public SessionNotFoundException(String message) {
        super(message);
    }
}
