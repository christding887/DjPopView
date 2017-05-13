//
//  subviewsdemoVC.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/20.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class subviewsdemoVC: UIViewController {
    var layV = layoutTestView(frame: CGRect(x: 0, y: 0, width: wscreen, height: hscreen))
    var targets = true
    let btn = UIButton(type: .roundedRect)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.addSubview(layV)
        btn.bounds = CGRect(x: 0, y: 0, width: 60, height: 30)
        btn.setTitle("click", for: .normal)
        btn.backgroundColor = UIColor.orange
        btn.center = view.center
        btn.addTarget(self, action: #selector(subviewsdemoVC.clickAction(_:)), for: .touchUpInside)
        view.addSubview(btn)
        // Do any additional setup after loading the view.
    }
   
    func clickAction(_ sender : UIButton) {
        layV.ifTheTopBanner = !layV.ifTheTopBanner
        layV.setNeedsLayout()
        layV.layoutIfNeeded()
        
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
