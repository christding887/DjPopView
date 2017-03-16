//
//  DemoVC.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/16.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class DemoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
  //不利用defer的时候reture后不会执行closeFile(file)
        // 伪代码
//        func writeSomething() {
//            
//            let file = OpenFile()
//            
//            let ioStatus = fetchIOStatus()
//            guard ioStatus != "error" else {
//                return
//            }
//            file.write()
//            
//            closeFile(file)
//            
//        }
//    //在return前定义defer内容可以执行closeFile(file)
//        // 伪代码
//        func writeSomething() {
//            
//            let file = OpenFile()
//            defer {
//                closeFile(file)
//            }
//            
//            let ioStatus = fetchIOStatus()
//            guard ioStatus != "error" else {
//                return
//            }
//            file.write()
//            
//        }
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
