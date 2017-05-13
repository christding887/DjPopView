//
//  pageMenuDemo.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/22.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class pageMenuDemo: UIViewController {

     var pageMenu : CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let parameters: [CAPSPageMenuOption] = [
            .scrollMenuBackgroundColor(UIColor.white),
            .viewBackgroundColor(UIColor.white),
            .selectionIndicatorColor(UIColor.red),
            .bottomMenuHairlineColor(UIColor.red),
            .selectedMenuItemLabelColor(UIColor.red),
            .unselectedMenuItemLabelColor(UIColor.gray),
            .selectionIndicatorHeight(2.0),
            .menuItemFont(UIFont(name: "HiraKakuProN-W6", size: 13.0)!),
            .menuHeight(34.0),
            .menuItemWidth(80.0),
            .menuMargin(0.0),
            //            "useMenuLikeSegmentedControl": true,
            .menuItemSeparatorRoundEdges(true),
            //            "enableHorizontalBounce": true,
            //            "scrollAnimationDurationOnMenuItemTap": 300,
            .centerMenuItems(true)]
        
        let controllerArray = [UIViewController]()
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)
        
        self.view.addSubview(pageMenu!.view)
        self.addChildViewController(pageMenu!)
        pageMenu?.didMove(toParentViewController: self)

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
