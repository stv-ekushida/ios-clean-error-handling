//
//  ViewController.swift
//  ios-clean-error-handling
//
//  Created by Kushida　Eiji on 2016/12/04.
//  Copyright © 2016年 Kushida　Eiji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //使い方
    func login() {
        
        do {
            let token = try loginUserWithUsername(username: nil, password: nil)
            print(token)
            
        }  catch let error as LoginError {
            print(error.description)
        } catch {
            print(error)
        }
    }
    
    func loginUserWithUsername(username: String?, password: String?) throws -> String{
        guard let username = username , !username.isEmpty else {
            throw LoginError.emptyUsername
        }
        
        guard let password = password , !password.isEmpty  else {
            throw LoginError.emptyPassword
        }
        
        return "tokenID"
    }
}
