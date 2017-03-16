//
//  File.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/6.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class cgd_testController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //sync 同步运行  async异步执行
        showQueue()
        //异步优先级
        showQosQueue()
        //延时执行
        showAfterQueue()
        
        //便捷创建全局队列
        showGlobalQueue()
        
        //DispatchWorkItem代替block
        showWorkItem()
        
    }
    func showQueue() {
        let queue = DispatchQueue(label: "first queue")
        queue.sync {
            for item in 0...10 {
                print("🍠",item)
            }
        }
    }
    // qos 优先级 ; attributes 串、并型选项
    func showQosQueue() {
        let queue1 = DispatchQueue(label: "first queue", qos: .userInitiated, attributes:.concurrent, autoreleaseFrequency: .inherit, target: nil)
        let queue2 = DispatchQueue(label: "second queue", qos: .userInitiated, attributes:.concurrent, autoreleaseFrequency: .inherit, target: nil)
        queue1.async {
            for item in 0...10 {
                print("🍉",item)
            }
        }
        queue2.async {
            for item in 100...110 {
                print("🍎",item)
            }
        }
    }
    
// Qos优先级从上到下
//    userInteractive
//    userInitiated
//    default
//    utility
//    background
//    unspecified
    func  showAfterQueue() {
        let queue = DispatchQueue(label: "thrid queue")
        queue.asyncAfter(deadline: .now() + 0.5) { 
            print(Date())
        }
    }
    
    func showGlobalQueue() {
        let globalQueue = DispatchQueue.global()
        globalQueue.async { 
            //后台线程执行队列
            DispatchQueue.main.async(execute: { 
                //主队列线程执行
            })
        }
        
    }
    
    func showWorkItem() {
        var value = 10
        
        let workItem = DispatchWorkItem {
            value += 5
        }
        
        let globalQ = DispatchQueue.global()
        //        globalQ.async {
        //            workItem.perform()
        //        }
        globalQ.async(execute: workItem)
        //或执行
//        workItem.notify(queue: DispatchQueue.main) {
//            print("value = ",value)
//        }
        
    }
    
}
