//
//  UserRequest.swift
//  NetworkDemo
//
//  Created by dengrui on 16/12/14.
//  Copyright © 2016年 dengrui. All rights reserved.
//

import Foundation
import Alamofire

struct UserListRequest: Request {
    
    var path: String {
        return "api/jing/"
    }
    let method: HTTPMethod = .get
    let parameters: [String: Any] = ["p": "5","t": "1"]
    
    typealias Response = UserListModel

}
