//
//  ViewController.swift
//  UITabBarController
//
//  Created by admin on 2020/12/9.
//

import UIKit

class ViewController: UIViewController {
    
    init(title: String, color: UIColor, imageName: String){
        super.init(nibName: nil, bundle: nil)
        self.view.backgroundColor = color
        self.tabBarItem.title = title //设置标签标题
        self.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal) //设置标签图片
        //设置选中状态下的图标
        self.tabBarItem.selectedImage = UIImage(named: "收藏")?.withRenderingMode(.alwaysOriginal)
        
        self.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 3)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        view.backgroundColor = .cyan
    }


}

