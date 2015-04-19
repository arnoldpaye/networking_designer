package com.alicanto.networking_designer

class Quotation {

    String name
    String description
    Date date
    Boolean status
    Supplier supplier

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
