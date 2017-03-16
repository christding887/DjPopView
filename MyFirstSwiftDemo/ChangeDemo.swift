//
//  ChangeDemo.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/15.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class ChangeDemo: UIViewController,SliderGalleryControllerDelegate {
    let screenWidth =  UIScreen.main.bounds.size.width
    //图片轮播组件
    var sliderGallery : ChangeViewVC!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        //初始化图片轮播组件
        sliderGallery = ChangeViewVC()
        sliderGallery.delegate = self
        sliderGallery.view.frame = CGRect(x: 10, y: 40, width: screenWidth-20,
                                          height: (screenWidth-20)/4*3);
        
        //将图片轮播组件添加到当前视图
        self.addChildViewController(sliderGallery)
        self.view.addSubview(sliderGallery.view)
        
        //添加组件的点击事件
        let tap = UITapGestureRecognizer(target: self,
                                         action: #selector(ChangeDemo.handleTapAction(_:)))
        sliderGallery.view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    func galleryScrollerViewSize() -> CGSize {
        return CGSize(width: screenWidth-20, height: (screenWidth-20)/4*3)
    }
    
    //图片轮播组件协议方法：获取数据集合
    func galleryDataSource() -> [String] {
        return ["http://bizhi.zhuoku.com/bizhi2008/0516/3d/3d_desktop_13.jpg",
                "http://img.web07.cn/UpImg/Desk/201301/12/desk230393121053551.jpg",
                "http://wallpaper.160.com/Wallpaper/Image/1280_960/1280_960_37227.jpg",
                "http://bizhi.zhuoku.com/wall/jie/20061124/cartoon2/cartoon014.jpg"]
    }
    
    //点击事件响应
    func handleTapAction(_ tap:UITapGestureRecognizer)->Void{
        //获取图片索引值
        let index = sliderGallery.currentIndex
        //弹出索引信息
        let alertController = UIAlertController(title: "您点击的图片索引是：",
                                                message: "\(index)", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "确定", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
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
