//
//  money.swift
//  domain-modeling
//
//  Created by Kevin Ly on 10/14/15.
//  Copyright © 2015 Kevin Ly. All rights reserved.
//

import Foundation

struct Money {
    var amount: Double
    var currency: String
    
    //initilize a new Money object
    init(amount: Double, currency: String) {
        self.amount = amount
        self.currency = currency
    }
    
    //returns the converted amount and updates amount/currency property accordingly
    mutating func convert(currency: String) -> Double {
        switch self.currency {
            case "USD":
                switch currency {
                    case "GBP":
                        amount *= 0.5
                        self.currency = currency
                        return amount
                    case "EUR":
                        amount *= 1.5
                        self.currency = currency
                        return amount
                    case "CAN":
                        amount *= 1.25
                        self.currency = currency
                        return amount
                    default:
                        return amount;
                }
            case "GBP":
                amount *= 2
                self.currency = "USD"
                if currency == "USD" {
                    return amount
                } else {
                    convert(currency)
                }
            case "EUR":
                amount /= 1.5
                self.currency = "USD"
                if currency == "USD" {
                    return amount
                } else {
                    convert(currency)
                }
            case "CAN":
                amount /= 1.25
                self.currency = "USD"
                if currency == "USD" {
                    return amount
                } else {
                    convert(currency)
                }
            default:
                print("Could not convert; money object has invalid currency code.")
        }
        return amount
    }
    
    
    //adds two money object and returns the amount in the currency of "self"
    func add(newMoney: Money) -> Double{
        var convertedMoney = newMoney
        return amount + convertedMoney.convert(currency)
    }
    
    //subtracts two money object and returns the amount in the currency of "self"
    func sub(newMoney: Money) -> Double{
        var convertedMoney = newMoney
        return amount - convertedMoney.convert(currency)
    }
}