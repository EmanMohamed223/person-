//
//  Person.swift
//  TablePerson
//
//  Created by Eman on 12/01/2023.
//

import Foundation
class Person2
{
    var name = ""
    var age :Int?
    var image = ""
    init(name: String = "", age: Int? = 0, image: String = "") {
        self.name = name
        self.age = age!
        self.image = image
    }
}
