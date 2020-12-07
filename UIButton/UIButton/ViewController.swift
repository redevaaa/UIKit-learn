//
//  ViewController.swift
//  UIButton
//
//  Created by admin on 2020/12/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        //MARK: 创建按钮 UIButtonType
        //.custom: 定制按钮，前面不带图标，默认文字颜色为白色，无触摸时的高亮效果
        //.system: 系统按钮，前面不带图标，默认文字颜色为蓝色，有触摸时的高亮效果
        //.contactAdd: 添加按钮，前面带“+”图标按钮，默认文字颜色为蓝色，有触摸时的高亮效果
        //.detailDisclosure .infoDark .infoLight: 详情按钮，前面带“!”图标按钮，默认文字颜色为蓝色，有触摸时的高亮效果
        let button = UIButton()
        button.frame = CGRect(x: 30, y: 100, width: 120, height: 40)
        button.setTitle("custom", for: .normal)//设置按钮显示的文字
        view.addSubview(button)
        
        //MARK: 设置按钮不同状态下的文字、颜色和阴影颜色 UIControl.State
        //.normal: 普通状态
        //.highlighted: 触摸状态
        //.disabled: 禁用状态
        button.setTitle("普通状态", for: .normal)//设置按钮显示的文字
        button.setTitle("触摸状态", for: .highlighted)
        button.setTitle("禁用状态", for: .disabled)
        button.setTitleColor(UIColor.red, for: UIControl.State.normal)
        button.setTitleColor(UIColor.blue, for: UIControl.State.highlighted)
        button.setTitleColor(UIColor.gray, for: UIControl.State.disabled)
        button.setTitleShadowColor(UIColor.black, for:.normal) //普通状态下文字阴影的颜色
        button.setTitleShadowColor(UIColor.yellow, for:.highlighted)
        button.setTitleShadowColor(UIColor.gray, for:.disabled)
        
        //MARK: 按钮背景颜色设置
        button.backgroundColor = UIColor.gray
        
        //MARK: 按钮字体和大小设置
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        //button.titleLabel?.font = UIFont.init(name: "HelveticaNeue-Bold", size: 23)//使用其它字体
        
        //MARK: 设置按钮图标 ？？？
        button.setImage(UIImage(named:"爱宠31"), for: .normal)
        button.adjustsImageWhenHighlighted = false //使触摸模式下按钮也不会变暗
        button.adjustsImageWhenDisabled = false //使禁用模式下按钮也不会变暗
        
        //MARK: 调整文字和图标之间的间距
        //通过图片偏移量（imageEdgeInsets）设置间距
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 0, bottom: 10, right: 5)
        //通过文字偏移量（titleEdgeInsets）设置间距
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        //改变图标与文字的相对位置
//        let imageSize = button.imageRect(forContentRect: button.frame)//获取图标的CGRect
//        let titleFont = button.titleLabel?.font//获取字体
//        let titleSize = button.currentTitle!.size(withAttributes:[NSAttributedString.Key.font: titleFont!])//获取文字的尺寸
        
        //MARK: 设置按钮背景图片
//        button.setBackgroundImage(UIImage(named:"爱宠31"), for: .normal)
        
        //MARK: 按钮的点击事件 UIControl.Event
        // button.addTarget(Any?, action: Selector, for: UIControlEvents)
        //.touchDown：单点触摸按下事件，点触屏幕
        //.touchDownRepeat：多点触摸按下事件，点触计数大于1，按下第2、3或第4根手指的时候
        //.touchDragInside：触摸在控件内拖动时
        //.touchDragOutside：触摸在控件外拖动时
        //.touchDragEnter：触摸从控件之外拖动到内部时
        //.touchDragExit：触摸从控件内部拖动到外部时
        //.touchUpInside：在控件之内触摸并抬起事件
        //.touchUpOutside：在控件之外触摸抬起事件
        //.touchCancel：触摸取消事件，即一次触摸因为放上太多手指而被取消，或者电话打断
        
        //不传递点击对象
        //button.addTarget(self, action: #selector(click), for: .touchUpInside)
        
        //传递点击对象
        //button.addTarget(self, action: #selector(click(_:)), for: .touchUpInside)
        
    }
    
    @objc func click(){
        print("没有传递触摸对象")
    }
    
    @objc func click(_ sender: UIButton) {
        print("传递触摸对象")
    }


}

