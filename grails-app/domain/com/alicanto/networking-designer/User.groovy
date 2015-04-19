package com.alicanto.networking-designer

class User {

    String userName
    String password
    String name
    String lastName
    String identityNumbre
    Boolean status
    Date lastAccessDate

    User createdBy
    Date createdDate
    User updatedBy
    Date updatedDate

    static constraints = {
    }
}
