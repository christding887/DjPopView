//
//  layoutTestView.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/20.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit
import SnapKit
class layoutTestView: UIView {
    
    var ifTheTopBanner = true
    var myTestView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.red
        myTestView.backgroundColor = UIColor.blue

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
  
    override func layoutSubviews() {
        super.layoutSubviews()
        self.addSubview(myTestView)
        myTestView.snp.removeConstraints()
        if ifTheTopBanner {
            myTestView.snp.makeConstraints({ (make) in
                make.top.equalTo(self).offset(10.0)
                make.left.equalTo(self).offset(10.0)
                make.right.equalTo(self).offset(-10.0)
                make.height.equalTo(80.0)
            })
        }else{
            myTestView.snp.makeConstraints({ (make) in
                make.left.equalTo(self).offset(10.0)
                make.right.equalTo(self).offset(-10.0)
                make.bottom.equalTo(self).offset(-10.0)
                make.height.equalTo(80.0)
            })
        }
    }
    

}
