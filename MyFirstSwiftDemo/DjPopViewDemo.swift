//
//  DjPopViewDemo.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/7.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//
//UINavigationBar.appearance().barTintColor = UIColor.blueColor(); //设置导航栏的统一的背景色
//navgationController.navigationBar.barStyle = UIBarStyle.BlackTranslucent; //设置导航栏的样式
//navgationController.navigationBar.setBackgroundImage(UIImage(named: ""), forBarMetrics: UIBarMetrics.Default); //设置导航栏的背景图

//self.navigationItem.prompt = "正在加载数据"; //设置prompt属性,主要是用来做一些提醒，比如网络请求，数据加载等等
import UIKit

class DjPopViewDemo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.prompt = "加载中..."
        view.backgroundColor = UIColor.orange
        let  popBtn = UIButton()
        popBtn.bounds = CGRect(x: 0, y: 0, width: 60, height: 30)
        popBtn.setTitle("click", for: .normal)
        popBtn.backgroundColor = UIColor.blue
        popBtn.center = view.center
        popBtn.addTarget(self, action:#selector(DjPopViewDemo.dosoming), for: .touchUpInside)
        view.addSubview(popBtn)
        
    }

    func dosoming() {
        self.navigationItem.prompt = nil
        DjPopView.addPopView(style: .PopWarning, ppTitle: "提醒", ppContent: "今天是个好日子记得要庆祝", cancelBtnTitle: "不要", okBtnTitle: "好的") {[weak self] (index) in
            if index == .okIndex{
                //print("ok")
                let vc = UIViewController()
                vc.view.backgroundColor = UIColor.blue
                self?.navigationController?.show(vc, sender: nil)
            }else{
                self?.dismiss(animated: true, completion: nil);
                //print("cancle")
            }
        }

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
