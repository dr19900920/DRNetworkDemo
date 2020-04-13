//
//  Test.swift
//  NetworkDemo
//
//  Created by dengrui on 17/1/12.
//  Copyright © 2017年 dengrui. All rights reserved.
//

import Foundation
import RealmSwift


//class Dog: Object {
//    dynamic var name = ""
//    dynamic var age = 0
//}
//
//class Person: Object {
//    dynamic var name = ""
//    dynamic var picture: NSData? = nil
//    let dogs = List<Dog>()
//}


//class Dog: Object {
//    dynamic var name = ""
////    dynamic var owner: Person?
////    dynamic var age = 0
//    let owners = LinkingObjects(fromType: Person.self, property: "dogs")
//}

//class Person: Object {
//    dynamic var name = ""
////    dynamic var birthdate = NSDate(timeIntervalSince1970: 1)
//    let age = RealmOptional<Int>()
////    let dogs = List<Dog>()
//}

//class Book: Object {
//    dynamic var price = 0
//    dynamic var title = ""
//    
//    override static func indexedProperties() -> [String] {
//        return ["title"]
//    }
//}

class Dog: Object {
    dynamic var name = ""
    dynamic var age = 0
}
