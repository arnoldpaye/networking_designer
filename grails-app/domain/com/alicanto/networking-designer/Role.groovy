package com.alicanto.networking-designer

class Role {

    String name
    String description
    Boolean status

    User createdBy
    Date createdDate
    User updatedBy
    Date updatedDate

    static constraints = {
    }
}
