//
//  ViewController.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/2.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        
    }

    @IBAction func btnAction(_ sender: UIButton) {
       
            mylabel.isHidden = !mylabel.isHidden
        
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


}

