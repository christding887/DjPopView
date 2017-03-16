//
//  mapviewVC.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/13.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class mapviewVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myarray = ["abc","cde","fgh","hyz"]
        //     let mya = myarray.map {        //map方法一（尾随闭包）
        //            return $0 + "mm"
        //        }
        //      print(mya)
        
        print(myarray.map(self.changeMy))
    }

    func changeMy(my: String) -> String {   //map方法二 （闭包函数）
        return my + "mm"
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
