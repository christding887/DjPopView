//
//  ALMNetWorking.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/8.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit
import Alamofire
extension String {
    var withBaseUrl :String {
        let cSet = NSCharacterSet.whitespacesAndNewlines
        return "https://www.olcps.com" + self.trimmingCharacters(in: cSet)
    }
    
}
class ALMNetWorking: NSObject {
    
    //单例
    static let instance :ALMNetWorking = {
        let toolInstance = ALMNetWorking()
        return toolInstance
    }()
    
//不带baseURL的post请求
/// 不带baseURL的post请求
///
/// - Parameters:
///   - URL: 请求地址字符串
///   - Parms: 请求参数
///   - success: 成功回调
///   - failed: 失败回调
    class func PostURL(_ URL:String,Parms:[String: AnyObject]?,success:@escaping ((Any) -> Void),failed:@escaping ((Any) -> Void)){
    Alamofire.request(URL, method:.post, parameters: Parms, encoding: URLEncoding.default, headers: nil).responseData { (DataResponse) in
    let result = DataResponse.result
    switch result {
    case .success(let Value):
    let jsonData = JSON(data: Value)
    let arrobj = jsonData["data"].object
    success(arrobj)
    break
    case .failure(let Error):
    failed(Error.localizedDescription)
    break
    }
 }
    
}
  
///
///带baseURL的post请求
/// - Parameters:
///   - URL: 请求地址字符串
///   - Parms: 请求参数
///   - success: 成功回调
///   - failed: 失败回调
class func Post(_ URL:String,Parms:[String: AnyObject]?,success:@escaping ((Any) -> Void),failed:@escaping ((Any) -> Void)){
   self.PostURL(URL.withBaseUrl, Parms: Parms, success: success, failed: failed)
}

    
    
/// 不带baseURL的get请求
///
/// - Parameters:
///   - URL: 请求地址字符串
///   - Parms: 请求参数
///   - success: 成功回调
///   - failed: 失败回调
class func GetURL(_ URL:String,Parms:[String: AnyObject]?,success:@escaping ((Any) -> Void),failed:@escaping ((Any) -> Void)) {
    Alamofire.request(URL, method:.get, parameters: Parms, encoding: URLEncoding.default, headers: nil).responseData { (DataResponse) in
        let result = DataResponse.result
        switch result {
        case .success(let Value):
            let jsonData = JSON(data: Value)
            let arrobj = jsonData["data"].object
            success(arrobj)
            break
        case .failure(let Error):
            failed(Error.localizedDescription)
            break
        }
    }
        
}
    
    
    
/// 带baseURL的get请求
///
/// - Parameters:
///   - URL: 请求地址字符串
///   - Parms: 请求参数
///   - success: 成功回调
///   - failed: 失败回调
class func Get(_ URL:String,Parms:[String: AnyObject]?,success:@escaping ((Any) -> Void),failed:@escaping ((Any) -> Void)) {
        self.GetURL(URL.withBaseUrl, Parms: Parms, success: success, failed: failed)
    }
}
