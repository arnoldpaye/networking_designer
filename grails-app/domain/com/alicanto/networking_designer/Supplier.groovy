package com.alicanto.networking_designer

class Supplier {

    String name
    String description
    String address
    Boolean status

    User createdBy
    Date createdDate
    User updatedBy
    Date updatedDate

    static constraints = {
        createdBy(nullable: true)
        createdDate(nullable: true)
        updatedBy(nullable: true)
        updatedDate(nullable: true)
    }
}
