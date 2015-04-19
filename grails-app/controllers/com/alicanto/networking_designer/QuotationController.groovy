package com.alicanto.networking_designer

class QuotationController {

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Quotation.list(params), model:[quotationInstanceCount: Quotation.count()]
    }
}
