package com.mycompany

import com.mycompany.domain.Event
import com.mycompany.domain.Participant
import grails.transaction.Transactional

class EventController {

    def add() {
        [participants: Participant.findAll(), events: Event.findAll()]
    }

    @Transactional
    def addEvent() {
        println(params)
        Event event = new Event(totalCost: new BigDecimal(params.totalCost), name: params.eventName)
        String[] names = params.name
        String[] participations = params.isParticipated
        String[] spends = params.spend
        String[] shares = params.share
        int totalShares = shares.findAll {it}.size()
        println(totalShares)
        BigDecimal ts = new BigDecimal(0)
        shares.each {
            if (it)
                ts += new BigDecimal(it)
        }
        println(ts)
        Map map = [:]
        Map bank = Bank.getInstance().status
        names.eachWithIndex { name, index ->
            if (participations[index] == 'on') {
                String id = Participant.findByName(name).id
                map.put(id, spends[index])
                BigDecimal balance = bank[id]
                if (!balance){
                    balance = 0
                    bank.put(id,balance)
                }
                BigDecimal is = new BigDecimal(shares[index] ?: 0)
                if(!shares[index])
                    bank[id] = balance + new BigDecimal(spends[index]).minus((event.totalCost.minus(ts)) / (participations.size() - totalShares))
                else
                    bank[id] = balance + new BigDecimal(spends[index]).minus(is)
            }
        }
        println(bank)
        event.eventRecord = map
        event.save(failOnError: true)
        flash.message = 'Event Successfully Added'
        redirect(action: 'add')
    }
}
