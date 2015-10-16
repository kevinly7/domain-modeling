//
//  main.swift
//  domain-modeling
//
//  Created by Kevin Ly on 10/14/15.
//  Copyright © 2015 Kevin Ly. All rights reserved.
//

import Foundation

print("Unit Testing")
print("\n\n")



print("--Money--")
print("")

var money1 = Money(amount: 200, currency: "USD")
var money2 = Money(amount: 100, currency: "GBP")
var money3 = Money(amount: 300, currency: "EUR")
var money4 = Money(amount: 500, currency: "CAN")

var USD = "USD"
var GBP = "GBP"
var EUR = "EUR"
var CAN = "CAN"


print("Convert 200USD to GBP: \(money1.convert(GBP))")
print("Convert 200USD to EUR: \(money1.convert(EUR))")
print("Convert 200USD to CAN: \(money1.convert(CAN))")
print("")
print("Convert 100GBP to USD: \(money2.convert(USD))")
print("Convert 100GBP to EUR: \(money2.convert(EUR))")
print("Convert 100GBP to CAN: \(money2.convert(CAN))")
print("")
print("Convert 300EUR to GBP: \(money3.convert(GBP))")
print("Convert 300EUR to USD: \(money3.convert(USD))")
print("Convert 300EUR to CAN: \(money3.convert(CAN))")
print("")
print("Convert 500CAN to GBP: \(money4.convert(GBP))")
print("Convert 500CAN to EUR: \(money4.convert(EUR))")
print("Convert 500CAN to USD: \(money4.convert(USD))")
print("")

var money5 = Money(amount: 200, currency: "USD")
var money6 = Money(amount: 100, currency: "GBP")
var money7 = Money(amount: 300, currency: "EUR")
var money8 = Money(amount: 500, currency: "CAN")

print("Add 200USD to 100GBP:    \(money5.add(money6))USD")
print("Add 300EUR to 500CAN:    \(money7.add(money8))EUR")
print("Sub 100GBP from 300EUR:  \(money6.sub(money7))GBP")
print("Sub 500CAN from 200USD:  \(money8.sub(money5))CAN")
print("\n\n")



print("--Job--")
print("")

var doctor = Job(title: "Doctor", salary: 150000.00)
var nurse = Job(title: "Nurse", salary: 80000.00)
var janitor = Job(title: "Janitor", salary: 10.00)

print("The doctor made  $\(doctor.calculateIncome()) this year")
print("The nurse made   $\(nurse.calculateIncome()) this year")
print("The janitor made $\(janitor.calculateIncome(2000)) this year")
print("The janitor got a %15 raise!")
(janitor.raise(0.15))
print("The janitor will make $\(janitor.calculateIncome(2000)) next year")
print("\n\n")



print("--Person--")
print("")

var elizabeth : Person
var adam = Person(firstName: "Adam", lastName: "Moore", age: 43, job: doctor)
elizabeth = Person(firstName: "Elizabeth", lastName: "Moore", age: 40, job: nurse, spouse: adam)
adam.spouse =  elizabeth
var michael = Person(firstName: "Michael", lastName: "Moore", age: 30, job: janitor)
var steven = Person(firstName: "Steven", lastName: "Moore", age: 12)
var robert = Person(firstName: "Robert", lastName: "Smith", age: 36, job: doctor)
var rachel = Person(firstName: "Rachel", lastName: "Smith", age: 34, spouse: robert)
robert.spouse = rachel
var tommy = Person(firstName: "Tommy", lastName: "Smith", age: 5)

adam.toString()
print("")
elizabeth.toString()
print("")
michael.toString()
print("")
steven.toString()
print("")
robert.toString()
print("")
rachel.toString()
print("\n\n")



print("--Job--")
print("")

var mooreMembers = [adam, elizabeth, michael, steven]
var mooreFamily = Family(members: mooreMembers)
var smithMembers = [robert, rachel]
var smithFamily = Family(members: smithMembers)
var underageMembers = Family(members: [steven, tommy])
var underageFamily = underageMembers

print("The Moore family household income is: $\(mooreFamily.householdIncome())")
print("The Smith family household income is: $\(smithFamily.householdIncome())")
mooreFamily.haveChild("Luke", lastName: "Moore")
smithFamily.haveChild("Sam", lastName: "Smith")








