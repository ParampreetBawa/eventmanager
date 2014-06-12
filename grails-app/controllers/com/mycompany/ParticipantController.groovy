package com.mycompany

import com.mycompany.domain.Participant
import grails.transaction.Transactional

class ParticipantController {

    def declare(){
        println(Participant.findAll())
        [participants:Participant.findAll()]
    }
    @Transactional
    def addParticipant(String name){
        Participant participant
        participant = Participant.findByName(name)
        if(participant)
            flash.message = 'Member Already Exists'
        else{
            participant = new Participant(name: name)
            participant.save()
            flash.message = 'Member Successfully Added'
        }
        redirect(action: 'declare')
    }
}
