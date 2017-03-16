//
//  DjPopViewDemo.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/7.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class DjPopViewDemo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        let  popBtn = UIButton()
        popBtn.bounds = CGRect(x: 0, y: 0, width: 60, height: 30)
        popBtn.setTitle("click", for: .normal)
        popBtn.backgroundColor = UIColor.blue
        popBtn.center = view.center
        popBtn.addTarget(self, action:#selector(DjPopViewDemo.dosoming), for: .touchUpInside)
        view.addSubview(popBtn)
        
    }

    func dosoming() {
        DjPopView.addPopView(style: .PopWarning, ppTitle: "提醒", ppContent: "今天是个好日子记得要庆祝", cancelBtnTitle: "不要", okBtnTitle: "好的") { (index) in
            if index == .okIndex{
                print("ok")
            }else{
                print("cancle")
            }
        }

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
