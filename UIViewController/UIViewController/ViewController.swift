//
//  ViewController.swift
//  UIViewController
//
//  Created by admin on 2020/12/8.
//

import UIKit

class ViewController: UIViewController, ViewControllerTwoProtocal {
    
    var labelOne: UILabel?
    var labelTwo: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let buttonOne = UIButton(type: .system)
        buttonOne.frame = CGRect(x:20,y:30,width: 200,height: 100)
        buttonOne.setTitle("跳转", for: .normal)
        buttonOne.addTarget(self, action: #selector(touch), for: .touchUpInside)
        view.addSubview(buttonOne)
        
        labelOne = UILabel(frame: CGRect(x:20, y:200, width: 280, height: 30))
        labelOne?.adjustsFontSizeToFitWidth = true
        view.addSubview(labelOne!)
        
        labelTwo = UILabel(frame: CGRect(x:20, y:300, width: 280, height: 30))
        labelTwo?.adjustsFontSizeToFitWidth = true
        view.addSubview(labelTwo!)

    }
    
    @objc func touch() {
        let viewControllerTwo = ViewControllerTwo(data: "第一个界面传来的 - 正向传递（构造方法传值）")
        viewControllerTwo.dataOne = "第一个界面传来的 - 正向传递（属性传值）"
        viewControllerTwo.delegate = self
        viewControllerTwo.closure = { (data: String) in
            self.labelTwo?.text = data
        }
        self.present(viewControllerTwo, animated: true, completion: nil)
    }
    
    func sentData(data: String) {
        self.labelOne?.text = data
    }


}

