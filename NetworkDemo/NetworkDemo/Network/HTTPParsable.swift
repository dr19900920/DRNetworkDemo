//
//  HTTPParsable.swift
//  NetworkDemo
//
//  Created by dengrui on 16/12/14.
//  Copyright © 2016年 dengrui. All rights reserved.
//

import Foundation
import ObjectMapper

public protocol Parsable {

    static func parse(json: [String: Any]) -> Self?
    
}
