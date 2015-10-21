//
//  job.swift
//  domain-modeling
//
//  Created by Kevin Ly on 10/15/15.
//  Copyright © 2015 Kevin Ly. All rights reserved.
//

import Foundation

class Job: CustomStringConvertible {
    let title: String
    var salary: Double
    var hourly = false
    var description: String {
        if (hourly) {
            return title + ": " + String(salary) + "/hour"
        } else {
            return title + ": " + String(salary) + "/year"
        }
    }
    
    init(title: String, salary: Double) {
        self.title = title
        self.salary = salary
        if salary < 100.00 {
            hourly = true
        }
    }
    
    func calculateIncome(hoursWorked: Double) -> Double {
        return salary * hoursWorked
    }
    
    func calculateIncome() -> Double{
        return salary
    }
    
    func raise(percent: Double) {
        salary += salary * percent
    }
}