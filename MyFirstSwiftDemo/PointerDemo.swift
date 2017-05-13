//
//  PointerDemo.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/31.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//
//首先，为了Swift编程语言语法体系的统一性，Swift语言核心设计团队为所有诸如UnsafePointer、UnsafeMutablePointer等类型增加了Optional，这个在Swift 2.x中是没有的，不过你可以直接对一个UnsafePointer<Int32>类型的对象置空。而在3.0版本中增加了这些类型的Optional属性之后，我们就可以把它们作为其他类型一样去对待了。
//然后，Swift 3.0给void*和const void*分别引入了UnsafeRawPointer类型和UnsafeMutableRawPointer类型。而在Swift 2.x中，它们分别对应的是UnsafePointer<Void>与UnsafeMutablePointer<Void>。此外，UnsafeRawPointer类型与UnsafeMutableRawPointer类型不能直接通过UnsafePointer与UnsafeMutablePointer的构造器转换为相应类型，而只能通过它们的assumingMemoryBound(to:)方法去转。
//最后，UnsafePointer类型要转为UnsafeMutablePointer类型时现在必须使用UnsafeMutablePointer的init(mutating:)方法，这里增加了一个参数标签mutating。
//UnsafeMutablePointer为可变指针 ，UnsafePointer为不可变指针

import UIKit

class PointerDemo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//                let dataPtr = GenerateData()
                
                // 这里可以看到，dataPtr的类型是UnsafeMutableRawPointer (void*类型)
//                print("dataPtr type is: \(type(of: dataPtr))")
                
                // 这里先将dataPtr类型转换为UnsafeMutablePointer<Int32>类型
//                let dataInt32Ptr = dataPtr.assumingMemoryBound(to: type(of: Int32()))
        
//                print("dataInt32Ptr type is: \(type(of: dataInt32Ptr))")
//                
//                // 我们还可以对指针所指向的整型数据做些修改
   
//                dataInt32Ptr.pointee += 10

//                // 在传递UseData的实参时，需要将dataInt32Ptr的类型再转为UnsafePointer<Int32>
//                UseData(UnsafePointer<Int32>(dataInt32Ptr))
//                
//                // 这里dataPtr2是UnsafeRawPointer?类型
 //               let dataPtr2 = GenerateData2()
               //print("指针类型为:\(type(of:dataPtr2))")
//                // 这里dataInt32Ptr2的类型是UnsafePointer<Int32>?
//                let dataInt32Ptr2 = dataPtr2?.assumingMemoryBound(to: type(of: Int32()))
//                
//                // 这里需要将dataInt32Ptr2类型转换为UnsafeMutablePointer<Int32>
//                UseData2(UnsafeMutablePointer<Int32>(mutating: dataInt32Ptr2))
//                
//                var intObj: Int32 = 0
//                
//                // 这里可以看到，在Swift中的一个Int32类型对象，
//                // 对它取地址操作也可以与UnsafePointer<Int32>类型进行匹配
//                UseData(&intObj)
//                
//                UseData2(&intObj)
//                
//                var uintObj: UInt = 1
//                
//                // 如果要将一个UnsafePointer<UInt>转换为UnsafePointer<Int32>，
//                // 现在无法直接用UnsafePointer的构造方法进行转换。
//                // 为了看清整个转换过程，我们先用withUnsafePointer来获取uintObj的指针类型对象
//                let uintPtr = withUnsafePointer(to: &uintObj) {
//                    (ptr: UnsafePointer<UInt>) -> UnsafePointer<UInt> in
//                    return ptr
//                }
//                
//                // 这里使用了Swift 3新引入的UnsafePointer与UnsafeMutablePointer的
//                // withMemoryRebound(to:capacity:_:)方法显式地将当前指针的原始类型
//                // 转换为目标类型的指针对象。
//                // 这里的Int32.self相当于type(of: Int32())，获取到的是Int32元类型
//                UseData(uintPtr.withMemoryRebound(to: Int32.self, capacity: 1) {
//                    (ptr: UnsafePointer<Int32>) -> UnsafePointer<Int32> in
//                    return ptr  
//                })  
//                
//                // 为了看清下一步操作，我们这里将withMemoryRebound方法所返回的  
//                // UnsafePointer<Int32>对象hold住  
//                let constPtr = uintPtr.withMemoryRebound(to: Int32.self, capacity: 1) {
//                    (ptr: UnsafePointer<Int32>) -> UnsafePointer<Int32> in  
//                    return ptr  
//                }
//               print("%d",constPtr);
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
