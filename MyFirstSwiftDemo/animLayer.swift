//
//  animLayer.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/11.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit
private let HxRingStrokeAnimationKey = "mmmaterialdesignspinner.stroke"
private let HxRingRotationAnimationKey = "mmmaterialdesignspinner.rotation"
class animLayer: CAShapeLayer {
    let timingfunc :CAMediaTimingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
    let lineW: CGFloat = 1.5
    var bpath : UIBezierPath {
        let center = CGPoint(x: self.bounds.midX, y: self.bounds.midY)
        let radius = min(self.bounds.width/2, self.bounds.height/2 - lineW/2)
        let startAngle = (CGFloat)(0);
        let endAngle = (CGFloat)(2*M_PI);
        return UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
    }
    var isAnimating :Bool?
    
    convenience init(size:CGSize) {
        self.init()
        self.bounds = CGRect(origin: CGPoint(x:0,y:0), size: size)
        self.position = CGPoint(x: self.bounds.midX, y: self.bounds.midY)
        self.path = bpath.cgPath
    }
    override init() {
        super.init()
        self.strokeStart = 0
        self.strokeEnd = 0
        self.strokeColor = UIColor.gray.cgColor
        self.fillColor = nil
        self.lineWidth = lineW
        isAnimating = false
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func resetAnimations() {
        if isAnimating! {
          stopAnimating()
          startAnimating()
        }
    }
    
    func setAnimating(animated: Bool) {
        (animated) ? stopAnimating() : startAnimating()
    }
    
    func startAnimating() {
        guard isAnimating! == false else {
            return
        }
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.duration = 4
        animation.fromValue = 0
        animation.toValue = CFloat(2 * M_PI)
        animation.repeatCount = Float(CFloat(MAXFLOAT))
        self.add(animation, forKey: HxRingRotationAnimationKey)
        
        let headAnimation = CABasicAnimation(keyPath: "strokeStart")
        headAnimation.duration = 1
        headAnimation.fromValue = 0
        headAnimation.toValue = 0.25
        headAnimation.timingFunction = timingfunc;
        
        let tailAnimation = CABasicAnimation(keyPath: "strokeEnd")
        tailAnimation.duration = 1
        tailAnimation.fromValue = 0
        tailAnimation.toValue = 1
        tailAnimation.timingFunction = timingfunc
        
        let endHeadAnimation = CABasicAnimation(keyPath: "strokeStart")
        endHeadAnimation.beginTime = 1
        endHeadAnimation.duration = 0.5
        endHeadAnimation.fromValue = 0.25
        endHeadAnimation.toValue = 1
        endHeadAnimation.timingFunction = timingfunc
        
        let endTailAnimation = CABasicAnimation(keyPath: "strokeEnd")
        endTailAnimation.beginTime = 1
        endTailAnimation.duration = 0.5
        endTailAnimation.fromValue = 1
        endTailAnimation.toValue = 1
        endTailAnimation.timingFunction = timingfunc
        
        let  animations = CAAnimationGroup()
        animations.duration = 1.5
        animations.animations = [headAnimation, tailAnimation, endHeadAnimation, endTailAnimation]
        animations.repeatCount = Float(CFloat(MAXFLOAT))
        self.add(animations, forKey: HxRingStrokeAnimationKey)
        
        isAnimating = true
        

    }
    func stopAnimating() {
        guard isAnimating! == true else {
            return
        }
        self.removeAnimation(forKey: HxRingStrokeAnimationKey)
        self.removeAnimation(forKey: HxRingRotationAnimationKey)
        isAnimating = false
        
    }
    
    
    
    
    
    
}
