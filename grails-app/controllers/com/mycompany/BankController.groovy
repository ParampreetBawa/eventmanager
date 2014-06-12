package com.mycompany

class BankController {

    def status() {
        [status:Bank.getInstance().status]
    }
}
