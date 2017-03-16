//
//  DJVProgress.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/11.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit
enum showType {
    case roundRing
    case realText
}
class DJVProgress: UIView {
    let mySuperView :UIView = UIView()
    let myTextLabel :UILabel = UILabel()
    
    
    
    func showDJProgress(atView view: UIView , animated:Bool) {
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    let myview = UIView(frame: CGRect(x: 10, y: 10, width: 300, height: 300))
//    view.addSubview(myview)
//    let mybei = UIBezierPath(arcCenter: CGPoint(x: 150,y:150), radius: 100, startAngle: 0, endAngle: CGFloat(M_PI*2), clockwise: true)
//    let shaplay = CAShapeLayer()
//    shaplay.path = mybei.cgPath
//    shaplay.lineWidth = 5.0
//    shaplay.strokeColor = UIColor.red.cgColor
//    shaplay.fillColor = UIColor.white.cgColor
//    let gropAni = CAAnimationGroup()
//    //one
//    let cabaseani = CABasicAnimation(keyPath: "strokeStart")
//    cabaseani.fromValue = 0
//    cabaseani.toValue = 0.25
//    cabaseani.duration = 1.0
//    
//    //two
//    let cabaseani2 = CABasicAnimation(keyPath: "strokeEnd")
//    cabaseani2.fromValue = 0
//    cabaseani2.toValue = 1.0
//    cabaseani2.duration = 1.0
//    //three
//    let cabaseani3 = CABasicAnimation(keyPath: "strokeStart")
//    cabaseani3.beginTime = 1.0
//    cabaseani3.fromValue = 0.25
//    cabaseani3.toValue = 1.0
//    cabaseani3.duration = 0.5
//    //four
//    let cabaseani4 = CABasicAnimation(keyPath: "strokeEnd")
//    cabaseani4.beginTime = 1.0
//    cabaseani4.fromValue = 1.0
//    cabaseani4.toValue = 1.0
//    cabaseani4.duration = 0.5
//    
//    gropAni.animations = [cabaseani,cabaseani2,cabaseani3,cabaseani4]
//    gropAni.duration = 1.5
//    gropAni.repeatCount = Float(CGFloat(MAXFLOAT))
//    
//    shaplay.add(gropAni, forKey: "strok")
//    myview.layer.addSublayer(shaplay)

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
