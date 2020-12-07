//
//  ViewController.swift
//  UISlider
//
//  Created by admin on 2020/12/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: 声明控件
        let slider = UISlider(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        slider.center = view.center
        self.view.addSubview(slider)
        
        slider.minimumValue = 0//最小值
        slider.maximumValue = 1//最大值
        slider.value = 0.5 //初始化值
        
        //MARK: 设置滑块动画
        slider.setValue(0.8,animated:true)
        
        //MARK: 滑块两边进度颜色
        slider.minimumTrackTintColor = UIColor.orange //左边槽的颜色
        slider.maximumTrackTintColor = UIColor.blue //右边槽的颜色
        slider.thumbTintColor = UIColor.gray //滑块颜色
        
        //MARK: 设置图标
        slider.minimumValueImage = UIImage(named:"爱宠27")  //左边图标
        slider.maximumValueImage = UIImage(named:"爱宠31")  //右边图标
        slider.setThumbImage(UIImage(named:"爱宠22") , for: .highlighted)
        
        //MARK: 添加值改变监听器valueChanged
        slider.addTarget(self, action: #selector(sliderDidChange(_:)) , for: .valueChanged)
        
        //MARK: 改变slider连续性 默认连续
        slider.isContinuous = false
        
    }
    
    @objc func sliderDidChange(_ sender: UISlider) {
        print(sender.value)
    }


}

