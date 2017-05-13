//
//  testClass.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/8.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class testClass:NSObject {
    var myname:String
    let password:String
    let ts1 = test1()
    let ts2 = test2()
    
   override init() {
        self.password = "123"
        self.myname = "dwc"
    }
    
 func show() {
        print("show time")
    }
    
    
}
class test1 {
    let name1 = "one"
    let password1 = "111"
    func oneaction() {
        print("1")
    }
}
class test2 {
    let name2 = "two"
    let password2 = "222"
    func towaction() {
        print("2")
    }
    
}
