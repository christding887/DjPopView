//
//  UIViewController+MBP.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/11.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

let KeyWindow : UIWindow = UIApplication.shared.keyWindow!
private var HUDKey = "HUDKey"
extension UIViewController {
    var hud : MBProgressHUD? {
        get{
            return objc_getAssociatedObject(self, &HUDKey) as? MBProgressHUD
        }
        set{
            objc_setAssociatedObject(self, &HUDKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    /**
     显示提示信息(有菊花, 一直显示, 不消失)，无默认文字，默认偏移量0
     
     - parameter view:    显示在哪个View上
     - parameter hint:    提示信息
     - parameter yOffset: y上的偏移量
     */
    func showHud(in view: UIView, hint: String? = nil, yOffset:CGFloat? = 0){
        let HUD = MBProgressHUD(view: view)
        HUD?.mode = .indeterminate
        HUD?.isUserInteractionEnabled = true
        view.addSubview(HUD!)
        HUD?.show(true)
        hud = HUD
    }
    
    /**
     显示纯文字提示信息(显示在keywindow上)，默认时间2s，默认偏移量0
     
     - parameter hint: 提示信息
     - parameter duration: 持续时间(不填的话, 默认两秒)
     - parameter yOffset: y上的偏移量
     */
    func showHintInKeywindow(hint: String, duration: Double = 2.0, yOffset:CGFloat? = 0) {
        let view = KeyWindow
        let HUD = MBProgressHUD(view: view)
        view.addSubview(HUD!)
        HUD?.animationType = .zoomOut
        HUD?.isUserInteractionEnabled = false
        HUD?.detailsLabelColor = UIColor.white
        HUD?.mode = .text
        HUD?.labelText = hint
        HUD?.show(true)
        HUD?.removeFromSuperViewOnHide = false
        HUD?.margin = 12
        HUD?.hide(true, afterDelay: duration)
        hud = HUD
    }
    
    /**
     显示纯文字提示信息，默认时间1.5s，默认偏移量0
     
     - parameter view: 显示在哪个View上
     - parameter hint: 提示信息
     - parameter duration: 持续时间(不填的话, 默认两秒)
     - parameter yOffset: y上的偏移量
     */
    func showHint(in view: UIView, hint: String, duration: Double = 1.5, yOffset:CGFloat? = 0) {
        let HUD = MBProgressHUD(view: view)
        view.addSubview(HUD!)
        HUD?.animationType = .zoomOut
        HUD?.detailsLabelColor = UIColor.white
        HUD?.mode = .text
        HUD?.labelText = hint
        HUD?.isUserInteractionEnabled = false
        HUD?.removeFromSuperViewOnHide = false
        HUD?.show(true)
        HUD?.margin = 12
        HUD?.hide(true, afterDelay: duration)
        hud = HUD
    }
    
    /// 移除提示
    func hideHud() {
        //如果解包成功则移除，否则不做任何事
        if let hud = hud {
            hud.hide(true)
        }
    }
    
}
