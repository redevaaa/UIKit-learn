//
//  ViewController.swift
//  UIScrollView
//
//  Created by admin on 2020/12/8.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    var imageView: UIImageView?
    var imageView2: UIImageView?
    var imageView3: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView(frame: view.frame)
        view.addSubview(scrollView)
        
        imageView = UIImageView(image: UIImage(named: "role5"))
        imageView?.frame = view.frame
        imageView?.contentMode = .scaleAspectFit
        scrollView.addSubview(imageView!)
        
        imageView2 = UIImageView(image: UIImage(named: "role6"))
        imageView2?.frame = CGRect(origin: CGPoint(x:0, y:view.frame.height), size: view.frame.size)
        imageView2?.contentMode = .scaleAspectFit
        scrollView.addSubview(imageView2!)
        
        imageView3 = UIImageView(image: UIImage(named: "role7"))
        imageView3?.frame = CGRect(origin: CGPoint(x:0, y:view.frame.height*2), size: view.frame.size)
        imageView3?.contentMode = .scaleAspectFit
        scrollView.addSubview(imageView3!)
        
        scrollView.contentSize = CGSize(width: view.frame.size.width*3, height: view.frame.size.height*3)
        
        //        //设置回弹效果
        //        scrollView.alwaysBounceVertical = false
        //        scrollView.alwaysBounceHorizontal = true
        //
        //        //设置滚动条
        //        scrollView.showsVerticalScrollIndicator = true
        //        scrollView.showsHorizontalScrollIndicator = true
        //
        //        //开启自动分页效果
        //        scrollView.isPagingEnabled = true
        
        //设置代理
        scrollView.delegate = self
        
        //设置缩放限度
        scrollView.minimumZoomScale = 0.5
        scrollView.maximumZoomScale = 2
        
    }
    
//    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
//        return imageView!
//    }

}

