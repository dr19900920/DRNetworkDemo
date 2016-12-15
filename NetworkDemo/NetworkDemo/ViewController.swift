//
//  ViewController.swift
//  NetworkDemo
//
//  Created by dengrui on 16/12/14.
//  Copyright © 2016年 dengrui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let client = AlamofireClient()
        let urlRequest = UserListRequest(parameters: ["p": "5","t": "1"])
        client.send(urlRequest) {
            userlist, error in
            if error != nil {return}
            if let userlist = userlist {
                print(userlist.users!)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

