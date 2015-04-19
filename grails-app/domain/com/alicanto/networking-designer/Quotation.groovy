package com.alicanto.networking-designer

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
    }
}
