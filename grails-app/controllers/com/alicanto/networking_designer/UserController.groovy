package com.alicanto.networking_designer

class UserController {

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model: [userInstanceCount: User.count()]
    }

    def create() {
        respond new User(params)
    }
}
