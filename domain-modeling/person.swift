//
//  person.swift
//  domain-modeling
//
//  Created by Kevin Ly on 10/15/15.
//  Copyright © 2015 Kevin Ly. All rights reserved.
//

import Foundation

class Person: CustomStringConvertible {
    var firstName: String
    var lastName: String
    var age: Int
    var job: Job?
    var spouse: Person?
    var description: String {
        var output: String = ""
        output += "First Name: \(firstName)\n" + "Last Name:  \(lastName)\n" + "Age:        \(age)\n"
        if (job ==  nil) {
            output += "Job:        \((job?.title))\n"
        } else {
            output += "Job:        \((job?.title)!)\n"
        }
        if (spouse == nil) {
            output += "Spouse:     \((spouse?.firstName))"
        } else {
            output += "Spouse:     \((spouse?.firstName)!)"
        }
        return output
    }
    
    init(firstName: String, lastName: String, age: Int, var job: Job?, var spouse: Person?) {
        if age < 16 {
            job = nil
        }
        if age < 18 {
            spouse = nil
        }
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.job = job
        self.spouse = spouse
    }
    
    convenience init(firstName: String, lastName: String, age: Int) {
        self.init(firstName: firstName, lastName: lastName, age: age, job: nil, spouse: nil)
    }
    
    convenience init(firstName: String, lastName: String, age: Int, job: Job?) {
        self.init(firstName: firstName, lastName: lastName, age: age, job: job, spouse: nil)
    }
    
    convenience init(firstName: String, lastName: String, age: Int, spouse: Person) {
        self.init(firstName: firstName, lastName: lastName, age: age, job: nil, spouse: spouse)
    }
    
    func toString() {
        print("First Name: \(firstName)")
        print("Last Name:  \(lastName)")
        print("Age:        \(age)")
        if (job ==  nil) {
            print("Job:        \((job?.title))")
        } else {
            print("Job:        \((job?.title)!)")
        }
        if (spouse == nil) {
            print("Spouse:     \((spouse?.firstName))")
        } else {
            print("Spouse:     \((spouse?.firstName)!)")
        }
    }
}