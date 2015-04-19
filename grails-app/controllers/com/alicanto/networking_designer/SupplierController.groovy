package com.alicanto.networking_designer

class SupplierController {

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Supplier.list(params), model:[quotationInstanceCount: Quotation.count()]
    }
}
