package com.alicanto.networking_designer

import grails.transaction.Transactional

class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "POST"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model: [userInstanceCount: User.count()]
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            redirect action: "index", method: "GET"
        }
        userInstance.save flush: true
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            redirect action: "index", method: "GET"
        }
        userInstance.save flush: true
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: OK] }
        }
    }

    def show(User userInstance) {
        respond userInstance
    }
}
