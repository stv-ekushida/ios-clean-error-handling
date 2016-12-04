//
//  LoginError.swift
//  ios-clean-error-handling
//
//  Created by Kushida　Eiji on 2016/12/04.
//  Copyright © 2016年 Kushida　Eiji. All rights reserved.
//

import Foundation

enum LoginError : Error {
    case emptyUsername
    case emptyPassword
}

extension LoginError : CustomStringConvertible {
    var description: String {
        switch self {
        case .emptyUsername:
            return "ユーザ名は必須入力です"
            
        case .emptyPassword:
            return "パスワードは必須入力です"
        }
    }
}
