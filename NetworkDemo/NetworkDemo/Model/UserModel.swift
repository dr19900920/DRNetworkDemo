//
//  UserModel.swift
//  NetworkDemo
//
//  Created by dengrui on 16/12/14.
//  Copyright © 2016年 dengrui. All rights reserved.
//

import Foundation
import ObjectMapper

struct UserModel {
    var id: String!
    var discount: String!
    var h: String!
    var url: String!
    var baoyou: String!
    var hot: String!
    var type: String!
    var discountPrice: String!
    var costPrice: String!
    var icon: String!
    var name: String!
    var recommendReason: String!
}

extension UserModel: Mappable {
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        discount <- map["discount"]
        h <- map["h"]
        url <- map["url"]
        baoyou <- map["baoyou"]
        hot <- map["hot"]
        type <- map["type"]
        discountPrice <- map["discountPrice"]
        costPrice <- map["costPrice"]
        icon <- map["icon"]
        name <- map["name"]
        recommendReason <- map["recommendReason"]
    }
}

func ==(lhs: UserModel, rhs: UserModel) -> Bool {
    return lhs.hashValue == rhs.hashValue
}

extension UserModel: Hashable {
    var hashValue: Int {
        return name.hashValue
    }
    
}
