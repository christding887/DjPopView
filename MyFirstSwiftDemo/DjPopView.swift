//
//  File.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/3.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import Foundation
import SnapKit
enum PopStyle {
    case PopRight
    case PopWrong
    case PopWarning
 static func showstyle(style:PopStyle) -> UIBezierPath {
        let djView = DjPopView()
        if style == .PopRight {
            return djView.rightPath
        }else if style == .PopWrong{
            return djView.wrongPath
        }else{
            return djView.warningPath
        }
    }
}
enum btnTarget : Int {
    case cancleIndex = 0
    case okIndex
}
public let wscreen:CGFloat = UIScreen.main.bounds.width
public let hscreen:CGFloat = UIScreen.main.bounds.height
private let wPopView: CGFloat = 220.0
private let hPopView: CGFloat = 235.0
class DjPopView: UIView {
    var cancleBtn:UIButton! //取消按钮
    var okBtn:UIButton!    //确定按钮
    var animaView:UIView!
    var titleLabel:UILabel!  //弹出标题
    var contentLabel:UILabel! //弹出内容
    var btnClickBlock:((btnTarget) -> Void)? //点击按钮回调
    //正确的path
    var rightPath :(UIBezierPath){
        let rPath : UIBezierPath = UIBezierPath(arcCenter: CGPoint(x:60.0,y:60.0), radius: 60.0, startAngle: 0, endAngle: CGFloat(M_PI*2), clockwise: true)
        rPath.lineCapStyle = .round
        rPath.lineJoinStyle = .round
        rPath.move(to: CGPoint(x: 20, y: 70.0))
        rPath.addLine(to: CGPoint(x: 65.0, y: 100.0))
        rPath.addLine(to: CGPoint(x: 95.0, y: 30))
        return rPath
    }
    //错误的path
    var wrongPath :(UIBezierPath){
        let rPath: UIBezierPath = UIBezierPath(roundedRect:CGRect.init(x: 0, y: 0, width: 120.0, height: 120.0)  , byRoundingCorners: .allCorners, cornerRadii: CGSize(width: 5.0, height: 5.0))
        rPath.lineCapStyle = .round
        rPath.lineJoinStyle = .round
        rPath.move(to: CGPoint(x: 10, y: 10))
        rPath.addLine(to: CGPoint(x: 110.0, y: 110.0))
        rPath.move(to: CGPoint(x: 110.0, y: 10))
        rPath.addLine(to: CGPoint(x: 10, y: 110.0))

        return rPath
    }
    //警告的path
    var warningPath :(UIBezierPath){
        let rPath = UIBezierPath()
        rPath.lineCapStyle = .round
        rPath.lineJoinStyle = .round
        rPath.move(to: CGPoint(x: 60.0, y: 0))
        rPath.addLine(to: CGPoint(x: 0, y: 120.0))
        rPath.addLine(to: CGPoint(x: 120.0, y: 120.0))
        rPath.close()
        rPath.move(to: CGPoint(x: 60.0, y: 20.0))
        rPath.addLine(to: CGPoint(x: 60.0, y: 90.0))
        rPath.move(to: CGPoint(x: 60.0, y: 100.0))
        rPath.addArc(withCenter: CGPoint(x: 60.0, y: 100.0),radius: 2.0, startAngle: 0, endAngle: CGFloat(M_PI*2), clockwise: true)
        
        return rPath
    }
    
    //自定义弹出框调用接口
    class func addPopView(style:PopStyle,ppTitle:String,ppContent:String,cancelBtnTitle:String?,okBtnTitle:String,completeBlock:@escaping ((btnTarget) -> Void)) {
        let thePopView = DjPopView(title: ppTitle, content: ppContent,cancelBtnTitle:cancelBtnTitle,okBtnTitle:okBtnTitle,completeBlock: completeBlock)
        thePopView.showPopView(style:style)
    }
    //自带取消和确定的接口
    class func addDefaultPopView(style:PopStyle,ppTitle:String,ppContent:String,completeBlock:@escaping ((btnTarget) -> Void)) {
        let thePopView = DjPopView(title: ppTitle, content: ppContent, completeBlock: completeBlock)
        thePopView.showPopView(style:style)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor=UIColor.white
        bounds=CGRect(x: 0, y: 0, width: wPopView, height: hPopView)
        center=CGPoint(x: wscreen/2, y: -hPopView/2)
        layer.cornerRadius = 5.0
    }
   //自定义按钮
    convenience init(title:String,content:String,cancelBtnTitle:String?,okBtnTitle:String,completeBlock:@escaping ((btnTarget) -> Void)) {
        
        self.init()
        animaView = UIView()
        addSubview(animaView)
        animaView.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(10.0)
            make.centerX.equalTo(self)
            make.width.equalTo(120.0)
            make.height.equalTo(120.0)
        }
        
        titleLabel = UILabel()
        titleLabel.text=title
        titleLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
        titleLabel.textAlignment = .center
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(animaView.snp.bottom).offset(5.0)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(25.0)
        }
        contentLabel = UILabel()
        contentLabel.text=content
        contentLabel.font = UIFont.systemFont(ofSize: 12.0)
        contentLabel.textColor = UIColor.lightGray
        contentLabel.textAlignment = .center
        addSubview(contentLabel)
        contentLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(5.0)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(30.0)
        }
        
        cancleBtn = UIButton(type: .roundedRect)
        cancleBtn.layer.cornerRadius = 5.0
        cancleBtn.backgroundColor = UIColor.orangeRedColor
        cancleBtn.setTitleColor(UIColor.white, for: .normal)
        cancleBtn.tag = btnTarget.cancleIndex.rawValue
        cancleBtn.isHidden = true
        cancleBtn.addTarget(self, action: #selector(DjPopView.btnAction(sender:)), for: .touchUpInside)
        addSubview(cancleBtn)
        cancleBtn.snp.makeConstraints { (make) in
            make.centerX.equalTo(self).offset(-50)
            make.top.equalTo(contentLabel.snp.bottom).offset(5)
            make.width.equalTo(80.0)
            make.height.equalTo(30.0)
        }
        if let cancleTitle = cancelBtnTitle {
            cancleBtn.setTitle(cancleTitle, for: .normal)
            cancleBtn.isHidden = false
        }

        okBtn = UIButton(type: .roundedRect)
        okBtn.layer.cornerRadius = 5.0
        okBtn.backgroundColor = UIColor.deapSkyBlue
        okBtn.setTitleColor(UIColor.white, for: .normal)
        okBtn.tag = btnTarget.okIndex.rawValue
        okBtn.setTitle(okBtnTitle, for: .normal)
        okBtn.addTarget(self, action: #selector(DjPopView.btnAction(sender:)), for: .touchUpInside)
        addSubview(okBtn)
        okBtn.snp.makeConstraints { (make) in
            make.centerX.equalTo(self).offset(cancleBtn.isHidden ? 0:50.0)
            make.top.equalTo(contentLabel.snp.bottom).offset(5)
            make.width.equalTo(80.0)
            make.height.equalTo(30.0)
        }
        
        btnClickBlock=completeBlock
       
    }

    convenience init(title:String,content:String,completeBlock:@escaping ((btnTarget) -> Void)) {
        self.init(title:title,content:content,cancelBtnTitle:"取消",okBtnTitle:"确定",completeBlock:completeBlock)
    }
    
    func btnAction(sender:UIButton) -> Void {
        btnClickBlock!(btnTarget(rawValue: sender.tag)!)
        hidePopView()
    }
    
    
    //usingSpringWithDamping弹力效果数值越小越明显，initialSpringVelocity数值越大初始初始速度越大
    func showPopView(style:PopStyle){
         UIApplication.shared.keyWindow?.addSubview(self)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 10.0, options: .curveEaseIn, animations: {
            self.transform = CGAffineTransform(translationX: 0, y: hscreen/2+hPopView/2)
        }) { (finished:Bool) in
            self.animaView.layer.removeAllAnimations()
            if self.animaView.layer.sublayers?.count != nil{
                for layer in self.animaView.layer.sublayers! {
                    layer.removeFromSuperlayer()
                }
            }
            switch style {
            case .PopRight:
                self.showAnimation(.PopRight)
                break
            case .PopWrong:
                self.showAnimation(.PopWrong)
                break
            case .PopWarning:
                self.showAnimation(.PopWarning)
                break
            }
        }
        
    }
    func hidePopView() {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 20.0, options: .curveEaseOut, animations: {
            self.transform = CGAffineTransform(translationX: 0, y: hscreen+hPopView)
        }) { (finished:Bool) in
            self.removeFromSuperview()
        }
    }
    func showAnimation(_ style:PopStyle) {
        let spLayer: CAShapeLayer = CAShapeLayer()
        let path = PopStyle.showstyle(style: style)
        spLayer.path = path.cgPath
        spLayer.strokeColor = UIColor.orange.cgColor
        if style == .PopWrong{
            spLayer.strokeColor = UIColor.red.cgColor
        }
        spLayer.fillColor = UIColor.white.cgColor
        spLayer.lineWidth = 5.0
        
        let baseAni: CABasicAnimation = CABasicAnimation.init(keyPath: "strokeEnd")
        baseAni.fromValue = 0
        baseAni.toValue = 1
        baseAni.duration = 1.0
        baseAni.isRemovedOnCompletion = false
        baseAni.repeatCount = 1
        baseAni.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionLinear)
        
        spLayer.add(baseAni, forKey: "stroke")
        animaView.layer.addSublayer(spLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
