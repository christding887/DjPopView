//
//  jsonTestController.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/7.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit
import Alamofire
import HandyJSON
class jsonTestController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //let mydic : [String:Any] = ["name":"dwc","age":18,"address":"longwan"]
        //        let jsonString = "{\"name\":\"dwc\",\"age\":18,\"address\":\"wenzhou\",\"phoneNumber\":86921887}"
        //        if let object = JSONDeserializer<User>.deserializeFrom(json: jsonString) {
        //            print(object.name!)
        //            print(object.address!)
        //            print(object.age!)
        //
        //        }
        
        //        let json2 = JSON(dictionaryLiteral:("name","dwc"),("age",18),("address","wenzhou"))
        //        print(json2)
        
        //        let mydic : [String:Any] = ["name":"dwc","age":18,"address":"longwan","phoneNumber":86921887]
        //
        //        if let object = JSONDeserializer<User>.deserializeFrom(dict: mydic as NSDictionary?){
        //            print(object.address!)
        //        }
        //
        //                let jsonString = "{\"name\":\"dwc\",\"age\":18,\"address\":\"wenzhou\",\"phoneNumber\":86921887}"
        //let jsonData = jsonString.data(using:.utf8, allowLossyConversion: false)
        //        if let jsonData = jsonString.data(using:.utf8, allowLossyConversion: false) {
        //            if let jsarry = JSON(data: jsonData).array {
        //                print(jsarry)
        //            }else{
        //               print(JSON(data: jsonData))
        //            }
        //            
        ////            let jsons = JSON(data: jsonData)
        ////            print(jsons.arrayValue)
        //        }
        //        
        
       // let myjson : JSON = ["name":"dwc","age":18,"address":"longwan"]
        
        
        //        let parameters: Parameters = [
        //            "foo": [1,2,3],
        //            "bar": [
        //                "baz": "qux"
        //            ]
        //        ]
        //        let headers: HTTPHeaders = [
        //            "Authorization": "Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==",
        //            "Accept": "application/json"
        //        ]
        //        

//        Alamofire.request("https://www.olcps.com/gainIndexPageImg.do", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (respond) in
//            //            if let JSON = respond.result.value {
//            //                print("JSON: \(JSON)")
//            //            }
//            let result = respond.result
//            switch result {
//            case .success(let Value):
//                print(Value)
//                break
//            case .failure(let Error):
//                print(Error)
//                break
//            }
//            
//        }

//        Alamofire.request("https://www.olcps.com/gainIndexPageImg.do", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseData { (DataResponse) in
//            let result = DataResponse.result
//            switch result {
//                case .success(let Value):
//                   let jsonData = JSON(data: Value)
//                   if  let arrobj = jsonData["data"].arrayObject {
//                    print(arrobj)
//                   }
//            
//                break
//                case .failure(let Error):
//                    print(Error)
//                    break
//                }
//            
//        }
        
//      ALMNetWorking.Post("/gainIndexPageImg.do", Parms: nil, success: { (data) in
//        if data is NSDictionary {
//            print("字典")
//        }else if data is NSArray{
//            print(data)
//        }else{
//            print("空")
//        }
//        
//      }) { (error) in
//        
//    }
       
    
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
       
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
