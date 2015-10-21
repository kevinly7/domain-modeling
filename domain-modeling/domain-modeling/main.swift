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

var money5 = Money(amount: 67090.37, currency: "USD")
var money6 = Money(amount: 3030.46, currency: "GBP")
var money7 = Money(amount: 80470.89, currency: "EUR")
var money8 = Money(amount: 3600, currency: "CAN")

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

print("Add 200USD  to  100GBP: \(money1.add(money2))")
print("Add 300EUR  to  500CAN: \(money3.add(money4))")
print("Sub 100GBP from 300EUR: \(money2.sub(money3))")
print("Sub 500CAN from 200USD: \(money4.sub(money1))")
print("")

print(money1)
print(money2)
print(money3)
print(money4)
print("")

print(money5)
print(money6)
print(money7)
print(money8)
print("")

print(23.USD)
print(325.GBP)
print(270943.EUR)
print(24363.CAN)
print("\n\n")





print("--Job--")
print("")

var doctor = Job(title: "Doctor", salary: 150000.00)
var nurse = Job(title: "Nurse", salary: 40.00)
var janitor = Job(title: "Janitor", salary: 10.00)
var surgeon = Job(title: "Doctor", salary: 250000.00)
var psychologist = Job(title: "Nurse", salary: 100000.00)
var pharmacist = Job(title: "Janitor", salary: 115000.00)

print(doctor)
print(nurse)
print(janitor)
print(surgeon)
print(psychologist)
print(pharmacist)
print("")

print("The doctor made  $\(doctor.calculateIncome()) this year")
print("The nurse made   $\(nurse.calculateIncome(2000)) this year")
print("The janitor made $\(janitor.calculateIncome(2000)) this year")
print("The surgeon made  $\(surgeon.calculateIncome()) this year")
print("The psychologist made   $\(psychologist.calculateIncome()) this year")
print("The pharmacist made $\(pharmacist.calculateIncome()) this year")
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

//adam.toString()
//print("")
//elizabeth.toString()
//print("")
//michael.toString()
//print("")
//steven.toString()
//print("")
//robert.toString()
//print("")
//rachel.toString()
//print("\n\n")

print(adam)
print("")
print(elizabeth)
print("")
print(michael)
print("")
print(steven)
print("")
print(robert)
print("")
print(rachel)
print("")
print(tommy)
print("\n\n")



print("--Family--")
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
print("")

print("--The Moore Famnily List--")
print(mooreFamily)
print("")
for person in mooreFamily.members {
    person.toString()
    print("")
}

print("")

print("--The Smith Famnily List--")
print(smithFamily)
print("")
for person in smithFamily.members {
    person.toString()
    print("")
}







