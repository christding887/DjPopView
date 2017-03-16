//
//  loginAnimationVC.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/14.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class loginAnimationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       //sb布局动画最终位置后利用延迟beginTime及kCAFillModeBackwards来初始动画的位置
//        let flyRight = CABasicAnimation(keyPath: "position.x")
//        flyRight.toValue = view.bounds.size.width/2
//        flyRight.fromValue = -view.bounds.size.width/2
//        flyRight.duration = 0.5
//        flyRight.fillMode = kCAFillModeBackwards
//        flyRight.beginTime = CACurrentMediaTime() + 0.5
//        reacView.layer.add(flyRight, forKey: nil)
        
        //动画组
//        let groupAnimation = CAAnimationGroup()
//        groupAnimation.beginTime = CACurrentMediaTime() + 0.5
//        groupAnimation.duration = 0.5
//        groupAnimation.fillMode = kCAFillModeBackwards
//        groupAnimation.timingFunction = CAMediaTimingFunction(
//            name: kCAMediaTimingFunctionEaseIn)
//        let scaleDown = CABasicAnimation(keyPath: "transform.scale")
//        scaleDown.fromValue = 3.5
//        scaleDown.toValue = 1.0
//        let rotate = CABasicAnimation(keyPath: "transform.rotation")
//        rotate.fromValue = CGFloat(M_PI_4)
//        rotate.toValue = 0.0
//        let fade = CABasicAnimation(keyPath: "opacity")
//        fade.fromValue = 0.0
//        fade.toValue = 1.0
//        groupAnimation.animations = [scaleDown, rotate, fade]
//        loginButton.layer.addAnimation(groupAnimation, forKey: nil)
        
        //关键帧
//        let balloon = CALayer()
//        balloon.contents = UIImage(named: "balloon")!.CGImage
//        balloon.frame = CGRect(x: -50.0, y: 0.0,width: 50.0, height: 65.0)
//        view.layer.insertSublayer(balloon, below: username.layer)
//        let flight = CAKeyframeAnimation(keyPath: "position")
//        flight.duration = 12.0
//        flight.values = [
//            CGPoint(x: -50.0, y: 0.0),
//            CGPoint(x: view.frame.width + 50.0, y: 160.0),
//            CGPoint(x: -50.0, y: loginButton.center.y)
//            ].map { NSValue(CGPoint: $0) }
//        flight.keyTimes = [0.0, 0.5, 1.0]  //百分比时间
//        balloon.addAnimation(flight, forKey: nil)
        

        // Do any additional setup after loading the view.
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
