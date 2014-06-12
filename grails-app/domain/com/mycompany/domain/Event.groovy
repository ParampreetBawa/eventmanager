package com.mycompany.domain

class Event {

    String id
    String name
    BigDecimal totalCost
    Map<String,BigDecimal> eventRecord

    static constraints = {
    }

    static mapping = {
        id(generator: 'uuid')
    }
}
