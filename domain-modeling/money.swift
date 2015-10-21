//
//  money.swift
//  domain-modeling
//
//  Created by Kevin Ly on 10/14/15.
//  Copyright © 2015 Kevin Ly. All rights reserved.
//

import Foundation

protocol Mathematics {
    func add(money: Money) -> Money
    func sub(money: Money) -> Money
}

extension Double {
    var USD: Money { return Money(amount: self, currency: "USD") }
    var GBP: Money { return Money(amount: self, currency: "GBP") }
    var EUR: Money { return Money(amount: self, currency: "EUR") }
    var CAN: Money { return Money(amount: self, currency: "CAN") }
}

struct Money: CustomStringConvertible, Mathematics {
    var amount: Double
    var currency: String
    var description: String {
        return currency + String(amount)
    }
    
    //initilize a new Money object
    init(amount: Double, currency: String) {
        self.amount = amount
        self.currency = currency
    }
    
    //returns the converted amount and updates amount/currency property accordingly
    mutating func convert(currency: String) -> Money {
        var convertedMoney: Money = self
        switch convertedMoney.currency {
            case "USD":
                switch currency {
                    case "GBP":
                        convertedMoney.amount *= 0.5
                        convertedMoney.currency = currency
                        return convertedMoney
                    case "EUR":
                        convertedMoney.amount *= 1.5
                        convertedMoney.currency = currency
                        return convertedMoney
                    case "CAN":
                        convertedMoney.amount *= 1.25
                        convertedMoney.currency = currency
                        return convertedMoney
                    default:
                        return convertedMoney
                }
            case "GBP":
                convertedMoney.amount *= 2
                convertedMoney.currency = "USD"
                if currency == "USD" {
                    return convertedMoney
                } else {
                     return convertedMoney.convert(currency)
                }
            case "EUR":
                convertedMoney.amount /= 1.5
                convertedMoney.currency = "USD"
                if currency == "USD" {
                    return convertedMoney
                } else {
                    return convertedMoney.convert(currency)
                }
            case "CAN":
                convertedMoney.amount /= 1.25
                convertedMoney.currency = "USD"
                if currency == "USD" {
                    return convertedMoney
                } else {
                    return convertedMoney.convert(currency)
                }
            default:
                print("Could not convert; money object has invalid currency code.")
        }
        return convertedMoney
    }
    
    //adds two money object and returns the amount in the currency of "self"
    func add(money: Money) -> Money{
        var sumMoney = money
        sumMoney = sumMoney.convert(self.currency)
        sumMoney.amount = self.amount + sumMoney.amount
        return sumMoney
    }
    
    //subtracts two money object and returns the amount in the currency of "self"
    func sub(money: Money) -> Money{
        var sumMoney = money
        sumMoney = sumMoney.convert(self.currency)
        sumMoney.amount = self.amount - sumMoney.amount
        return sumMoney
    }
}