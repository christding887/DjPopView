//
//  blockdemo.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/9.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class blockdemo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//解决循环引用的三个方法
        //1. 将self申明为弱引用类型，打破循环引用
        //weak var weakSelf = self
        
        //2.在闭包的第一个大括号后面紧接着插入这段代码[weak self]，后面的代码直接使用self？
//        var callBack: ((String) -> ())?
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            printString {[weak self] (text) in
//                print(text)
//                self?.view.backgroundColor = UIColor.red
//            }
//        }
        
        //3.在闭包和捕获的实例总是互相引用并且总是同时释放时，可以将闭包内的捕获定义为无主引用unowned (写法同2)
        
        
       
//        方式一：利用typealias最完整的创建
//        //为(_ num1: Int, _ num2: Int) -> (Int) 类型的闭包定义别名：Add
//        typealias Add = (_ num1: Int, _ num2: Int) -> (Int)
//        //创建一个 Add 类型的闭包常量：addCloser1
//        let addCloser1: Add
//        //为已经创建好的常量 addCloser1 赋值
//        addCloser1 = {
//            (_ num1: Int, _ num2: Int) -> (Int) in
//            return num1 + num2
//        }
//        //调用闭包并接受返回值
//        let result = addCloser1(20, 10)
        
        
        
        
//        形式二：闭包类型申明和变量的创建合并在一起
//       
//        //创建一个 (_ num1: Int, _ num2: Int) -> (Int) 类型的闭包常量：addCloser1
//        let addCloser1: (_ num1: Int,_ num2: Int) -> (Int)
//        //为已经创建好的常量 addCloser1 赋值
//        addCloser1 = {
//            (_ num1: Int,_ num2: Int) -> (Int) in
//            return num1 + num2
//        }
//        //调用闭包并接受返回值
//        let result = addCloser1(20, 10)
        
        
        
        
//        形式三：省略闭包接收的形参、省略闭包体中返回值
//      
//        //创建一个 (Int, Int) -> (Int) 类型的闭包常量：addCloser1
//        let addCloser1: (Int, Int) -> (Int)
//        //为已经创建好的常量 addCloser1 赋值
//        addCloser1 = {
//            (num1, num2) in
//            return num1 + num2
//        }
//        //调用闭包并接受返回值
//        let result = addCloser1(20, 10)
        
        
        
//        形式四：在形式三的基础上进一步精简
//        
//        //创建一个 (Int, Int) -> (Int) 类型的闭包常量：addCloser1 并赋值
//        let addCloser1: (Int, Int) -> (Int) = {
//            (num1, num2) in
//            return num1 + num2
//        } 
//        //调用闭包并接受返回值
//        let result = addCloser1(20, 10)
        
        
        
//        形式五：如果闭包没有接收参数省略in
//       
//        //创建一个 () -> (String) 类型的闭包常量：addCloser1 并赋值
//        let addCloser1: () -> (String) = {
//            return "这个闭包没有参数，但是有返回值"
//        }
//        //调用闭包并接受返回值
//        let result = addCloser1()
        
    
        
//尾随闭包
//        func combine1(num:Int, handle:(String,String)->(Void)) {
//            
//            handle("hello", "world \(num)")
//        }
//        combine1(num: 2016) { (text, text1) -> (Void) in
//            print("\(text) \(text1)")
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
