package com.mycompany.domain

class Participant {

    String id
    String name
    static constraints = {
    }
    static mapping = {
        id(generator: 'uuid')
    }
}
