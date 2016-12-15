//
//  HTTPRequest.swift
//  NetworkDemo
//
//  Created by dengrui on 16/12/14.
//  Copyright © 2016年 dengrui. All rights reserved.
//

import Foundation
import Alamofire

public protocol Request {

    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: [String: Any] { get set }
    
    associatedtype Response: Parsable
}
