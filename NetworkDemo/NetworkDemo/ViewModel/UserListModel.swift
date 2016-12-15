//
//  UserListModel.swift
//  NetworkDemo
//
//  Created by dengrui on 16/12/14.
//  Copyright © 2016年 dengrui. All rights reserved.
//

import Foundation
import ObjectMapper


struct UserListModel {
    var users: [UserModel]!
}

extension UserListModel: Mappable {
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        users <- map["result"]
    }
}

func ==(lhs: UserListModel, rhs: UserListModel) -> Bool {
    return lhs.hashValue == rhs.hashValue
}

extension UserListModel: Hashable {
    var hashValue: Int {
        return users.description.hashValue
    }
}

extension UserListModel: Parsable {
    
    static func parse(json: [String: Any]) -> UserListModel? {
        
        return Mapper<UserListModel>().map(JSON: json)
        
    }
    
}
