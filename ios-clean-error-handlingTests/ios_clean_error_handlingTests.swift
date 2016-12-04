//
//  ios_clean_error_handlingTests.swift
//  ios-clean-error-handlingTests
//
//  Created by Kushida　Eiji on 2016/12/04.
//  Copyright © 2016年 Kushida　Eiji. All rights reserved.
//

import XCTest
@testable import ios_clean_error_handling

class ios_clean_error_handlingTests: XCTestCase {
    
    var vc: ViewController?
    
    override func setUp() {
        super.setUp()
        vc = ViewController()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testLoginErrorForEmptyUserName() {
        
        do {
            _ = try vc?.loginUserWithUsername(username: "", password: "abc")
            
        }  catch let error as LoginError {
            print(error.description)
            
            XCTAssertEqual(error.description, "ユーザ名は必須入力です")
            
        } catch {
            print(error)
        }
    }
    
    func testLoginErrorForNilUserName() {
        
        do {
            _ = try vc?.loginUserWithUsername(username: nil, password: "abc")
            
        }  catch let error as LoginError {
            print(error.description)
            
            XCTAssertEqual(error.description, "ユーザ名は必須入力です")
            
        } catch {
            print(error)
        }
    }

    func testLoginErrorForEmptyPassword() {
        
        do {
            _ = try vc?.loginUserWithUsername(username: "aaaa", password: "")
            
        }  catch let error as LoginError {
            print(error.description)
            
            XCTAssertEqual(error.description, "パスワードは必須入力です")
            
        } catch {
            print(error)
        }
    }
    
    
    func testLoginErrorForNilPassword() {
        
        do {
            _ = try vc?.loginUserWithUsername(username: "aaaa", password: nil)
            
        }  catch let error as LoginError {
            print(error.description)
            
            XCTAssertEqual(error.description, "パスワードは必須入力です")
            
        } catch {
            print(error)
        }
    }
}
