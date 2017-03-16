//
//  HXButton.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/11.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class HXButton: UIButton {
    var isLoading :Bool?
    var animLayer : animLayer?
    var contentColor :UIColor {
        get{
            return bgView.backgroundColor!
        }
        set {
            bgView.backgroundColor = newValue
           
        }
    }
    var progressColor:UIColor?
    var forDisplayButton:UIButton = UIButton()
    var defaultW :CGFloat!
    var defaultH :CGFloat!
    var defaultR :CGFloat!
    var scale :CGFloat!
    var bgView : UIView {
        let bv = UIView(frame: self.bounds)
        bv.isUserInteractionEnabled = false
        bv.isHidden = true
        bv.layer.cornerRadius = 3.0;
        bv.layer.masksToBounds = false
        defaultW = bv.frame.size.width;
        defaultH = bv.frame.size.height;
        defaultR = bv.layer.cornerRadius;
        return bv
    }
    var btnBackgroundImage:UIImage = UIImage()
    
    
   override init(frame: CGRect) {
        super.init(frame: frame)
    }
    convenience init(frame: CGRect,color:UIColor) {
        self.init(frame:frame)
        initSettingWithColor(color:color)
    }
    func initSettingWithColor(color:UIColor) {
        self.clipsToBounds = false
        self.layer.masksToBounds = false
        bgView.backgroundColor = color
        self.addSubview(bgView)
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
