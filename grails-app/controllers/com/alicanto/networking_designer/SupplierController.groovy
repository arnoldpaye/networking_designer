package com.alicanto.networking_designer

import grails.transaction.Transactional

class SupplierController {

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Supplier.list(params), model:[quotationInstanceCount: Quotation.count()]
    }

    def create() {
        respond new Supplier(params)
    }

    @Transactional
    def save(Supplier supplierInstance) {
        if (supplierInstance == null) {
            redirect action: "index", method: "GET"
        }
        supplierInstance.save flush: true
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'supplier.label', default: 'Supplier'), supplierInstance.id])
                redirect supplierInstance
            }
            '*' { respond supplierInstance, [status: CREATED] }
        }
    }

    @Transactional
    def update(Supplier supplierInstance) {
        if (supplierInstance == null) {
            redirect action: "index", method: "GET"
        }
        supplierInstance.save flush: true
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'supplier.label', default: 'Supplier'), supplierInstance.id])
                redirect supplierInstance
            }
            '*' { respond supplierInstance, [status: OK] }
        }
    }

    def show(Supplier supplierInstance) {
        respond supplierInstance
    }
}
