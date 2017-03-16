//
//  User.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/6.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit
import HandyJSON
class User : HandyJSON {
    var name : String?
    var age : Int?
    var address : String?
    var phoneNumber : Int?
    var birthday : Int?
    
    required init() {
    }
//    override internal var description: String {
//        return "name: \(name) \n age:\(age) \n address:\(address) \n phoneNumber:\(phoneNumber) \n"
//    }
    
    
}
