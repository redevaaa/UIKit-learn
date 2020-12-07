//
//  ViewController.swift
//  UIImageView
//
//  Created by admin on 2020/12/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: 获取图片
        //通过图片素材
        //let image = UIImage(named: "button")
        
        //通过文件路径
        //let path = Bundle.main.path(forResource: String?, ofType: String?)!
        //let image = UIImage(contentsOfFile: "/Users/admin/Desktop/button.png")
        
        //通过Data数据创建
        //let image = UIImage(data: Data())
        
        //通过网络加载图片
        //定义URL对象
        //let url = URL(string: "http://pic150.nipic.com/file/20171224/8669400_090903351033_2.jpg")
        //从网络获取数据流
        //let data = try! Data(contentsOf: url!)
        //通过数据流初始化图片
        //let image = UIImage(data: data)
        
        //let size = image?.size
        
        
        //MARK: 声明控件
        //let imageView = UIImageView(image: image)
        //imageView.frame = CGRect(x: 0, y: 100, width: 64, height: 64)
        //self.view.addSubview(imageView)
        
        //MARK: 设置图片缩放模式 contentMode
        // .scaleAspectFit 在保持长宽比的前提下，缩放图片，使得图片在容器内完整显示出来。
        // .scaleAspectFill 在保持长宽比的前提下，缩放图片，使图片充满容器。
        // .scaleToFill 缩放图片,使图片充满容器。图片未必保持长宽比例协调，有可能会拉伸至变形。
        // .topLeft    .top     .topRight
        // .left       .center  .right
        // .bottomLeft .bottom  .bottomRight
        //imageView.contentMode = .scaleToFill
        
        //MARK: 实现图片动画
        var imageArry = [UIImage]()
        for index in 1...9 {
            let roleImage = UIImage(named: "role\(index)")
            imageArry.append(roleImage!)
        }
        let roleImageView = UIImageView(frame: CGRect(x:50, y:250, width: 100, height: 100))
        roleImageView.animationImages = imageArry
        roleImageView.animationDuration = 3
        roleImageView.animationRepeatCount = 0
        view.addSubview(roleImageView)
        roleImageView.startAnimating()
    }


}

