//
//  Person.swift
//  ContactsApp
//
//  Created by Stanislav Testov on 13.04.2021.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(lastName) \(firstName)"
    }
}


extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let data = PersonDataManager()
        
        let firstNames = data.firstNames.shuffled()
        let lastNames = data.lastNames.shuffled()
        let phoneNumber = data.phoneNumbers.shuffled()
        let emails = data.emails.shuffled()
        
        let minAmount = getAmountOfFullDataPersons()
        
        if minAmount > 0 {
            for index in 0...minAmount - 1 {
                persons.append(Person(
                                firstName: firstNames[index],
                                lastName: lastNames[index],
                                phoneNumber: phoneNumber[index],
                                email: emails[index]))
            }
        }
        return persons
    }
}

extension Person {
    static func getAmountOfFullDataPersons() -> Int {
        var amount = [Int]()
        let data = PersonDataManager()
        let minAmount: Int
        
        amount.append(data.firstNames.count)
        amount.append(data.lastNames.count)
        amount.append(data.phoneNumbers.count)
        amount.append(data.emails.count)
        
        if let min = amount.min() {
            minAmount = min
        } else {
            minAmount = 0
        }
        return minAmount
    }
}
