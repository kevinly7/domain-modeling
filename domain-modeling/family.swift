//
//  family.swift
//  domain-modeling
//
//  Created by Kevin Ly on 10/15/15.
//  Copyright © 2015 Kevin Ly. All rights reserved.
//

import Foundation

class Family {
    var members = [Person]()
    
    init(members: [Person]) {
        var legal = false
        for person in members {
            if person.age >= 21 {
                legal = true
            }
        }
        if legal {
            self.members = members
        } else {
            print("Must have one person over 21 in your family.")
        }
    }
    
    func householdIncome() -> Double {
        var totalIncome = 0.0
        for person in members {
            if person.job != nil {
                if (person.job!.hourly) {
                    totalIncome += person.job!.calculateIncome(2000)
                } else {
                    totalIncome += person.job!.calculateIncome()
                }
            }
        }
        return totalIncome
    }
    
    func haveChild(firstName: String, lastName: String) {
        let newChild = Person(firstName: firstName, lastName: lastName, age: 0)
        members.append(newChild)
    }
}