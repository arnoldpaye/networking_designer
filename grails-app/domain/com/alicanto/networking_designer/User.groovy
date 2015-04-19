package com.alicanto.networking_designer

class User {

    String userName
    String password
    String name
    String lastName
    String identityNumber
    Boolean status
    Date lastAccessDate
    Role role

    User createdBy
    Date createdDate
    User updatedBy
    Date updatedDate

    static constraints = {
        userName(unique: true)
        lastAccessDate(nullable: true)
        role(nullable: true)
        createdBy(nullable: true)
        createdDate(nullable: true)
        updatedBy(nullable: true)
        updatedDate(nullable: true)
    }
}
