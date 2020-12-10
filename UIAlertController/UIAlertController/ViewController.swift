//
//  ViewController.swift
//  UIAlertController
//
//  Created by admin on 2020/12/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alertButton = UIButton(type: .system)
        alertButton.frame = CGRect(x: 30, y: 100, width: 120, height: 40)
        alertButton.setTitle("弹出警告框", for: .normal)
        view.addSubview(alertButton)
        
        alertButton.addTarget(self, action: #selector(popAlert(_:)), for: .touchUpInside)
        
        let actionSheetButton = UIButton(type: .system)
        actionSheetButton.frame = CGRect(x: 30, y: 250, width: 120, height: 40)
        actionSheetButton.setTitle("弹出抽屉", for: .normal)
        view.addSubview(actionSheetButton)
        
        actionSheetButton.addTarget(self, action: #selector(popSheet(_:)), for: .touchUpInside)
        
        
    }
    
    @objc func popAlert(_ sender: AnyObject) {
        let alertController = UIAlertController(title: "我是警告框弹窗", message: "这里填写内容", preferredStyle: .alert)
        alertController.addTextField { (textField) in
            //在闭包中对UITextField进行配置
            textField.placeholder = "请输入用户名"
        }
        alertController.addTextField { (textField) in
            textField.placeholder = "请输入密码"
            //密码模式
            textField.isSecureTextEntry = true
        }
        
        let alertAction1 = UIAlertAction(title: "登录", style: .default){
            (action) in
            print(alertController.textFields?.first?.text ?? "未输入文字")
        }
        let alertAction2 = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        alertController.addAction(alertAction1)
        alertController.addAction(alertAction2)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @objc func popSheet(_ sender: AnyObject) {
        let alertController = UIAlertController(title: "我是抽屉弹窗", message: "这里填写内容", preferredStyle: .actionSheet)
        let alertAction1 = UIAlertAction(title: "登录", style: .default){
            (action) in
            print(alertController.textFields?.first?.text ?? "未输入文字")
        }
        let alertAction2 = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        alertController.addAction(alertAction1)
        alertController.addAction(alertAction2)
        self.present(alertController, animated: true, completion: nil)
    }


}

