//
//  ViewController.swift
//  NetworkDemo
//
//  Created by dengrui on 16/12/14.
//  Copyright © 2016年 dengrui. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let client = AlamofireClient()
//        let urlRequest = UserListRequest(parameters: ["p": "5","t": "1"])
//        client.send(urlRequest) {
//            userlist, error in
//            if error != nil {return}
//            if let userlist = userlist {
//                print(userlist.users!)
//            }
//        }

        
//        let myDog = Dog()
//        myDog.name = "Rex"
//        myDog.age = 1
//        print("name of dog: \(myDog.name)")
//        
//        let realm = try! Realm()
//        let puppies = realm.objects(Dog.self).filter("age < 2")
//        print(puppies.count)
//        /// 写入这个对象
//        try! realm.write {
//            realm.add(myDog)
//        }
//        
//        /// 异步更新数据
//        DispatchQueue(label: "background").async {
//            let realm = try! Realm()
//            let theDog = realm.objects(Dog.self).filter("age == 1").first
//            
//            try! realm.write {
//                theDog!.age = 3
//            }
//        }
        
//        let jim = Person()
//        let rex = Dog()
//        rex.owner = jim
//        
//        let realm = try! Realm()
//        let someDogs = realm.objects(Dog.self).filter("name contains 'Fido'")
//        jim.dogs.append(objectsIn: someDogs)
//        jim.dogs.append(rex)
        
//        let realm = try! Realm()
//        try! realm.write {
//            var person = realm.create(Person.self, value: ["Jane", 27])
//            person.age.value = 28
//        }
        
        var myDog = Dog()
        myDog.name = "Rex"
        myDog.age = 10
        let myOtherDog = Dog(value: ["name": "Pluto", "age": 3])
        let myThirdDog = Dog(value: ["Fido", 5])
        
        
        print(Realm.Configuration.defaultConfiguration.fileURL)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

