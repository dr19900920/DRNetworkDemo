//
//  HTTPClient.swift
//  NetworkDemo
//
//  Created by dengrui on 16/12/14.
//  Copyright © 2016年 dengrui. All rights reserved.
//

import Foundation
import Alamofire
import SVProgressHUD

public enum AlamofireError: Error {
    case jsonMapping
    case errorCode
    case connectionFaild
}

protocol Client {
    
    var host: String { get }
    
    func send<T: Request>(_ r: T, handler: @escaping (T.Response?, _ error :AlamofireError?) -> ())
}

struct AlamofireClient: Client {
    
    let host = "http://shop.shoujishequ.com/"
    
    func send<T : Request>(_ r: T, handler: @escaping (T.Response?, _ error :AlamofireError?) -> ()) {
        let urlString = host.appending(r.path)
        let url = URL(string: urlString)!
        
        print("\n----------request----------\nrequestUrl = \(urlString)\n----------method----------\nmethod = \(r.method.rawValue)\nparameters = \(r.parameters)")
        
        Alamofire.request(url, method: r.method, parameters: r.parameters, headers: [:]).responseJSON { (response) in
            
            switch response.result {
            case .success:
                
                print("\n---------response---------\n\(response.result.value)")
                
                if let dic = response.result.value as? [String: Any], case let res = T.Response.parse(json: dic) {
                    if let infotext = dic["infocode"] as? String {
                        if infotext == "000000" {
                            handler(res, nil)
                        } else {
                            handler(res, .errorCode)
                            SVProgressHUD.showError(withStatus: dic["infotext"] as! String!)
                        }
                    }
                }
                
            case .failure:
                
                handler(nil, .connectionFaild)
                SVProgressHUD.showError(withStatus: "网络不给力")
                
            }
        }
        
    }
    
    
    
}
