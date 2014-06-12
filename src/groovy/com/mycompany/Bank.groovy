package com.mycompany

class Bank {
    Map<String,BigDecimal> status = [:]
    static Bank bank = null;
    static getInstance(){
        if(!bank)
            bank = new Bank()
        bank
    }
}

