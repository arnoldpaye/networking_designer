package com.alicanto.networking_designer

class User {

    String userName
    String password
    String name
    String lastName
    String identityNumbre
    Boolean status
    Date lastAccessDate
    Role role

    User createdBy
    Date createdDate
    User updatedBy
    Date updatedDate

    static constraints = {
    }
}
