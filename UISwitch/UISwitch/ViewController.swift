//
//  ViewController.swift
//  UISwitch
//
//  Created by admin on 2020/12/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: 声明控件
        let switcher = UISwitch(frame: CGRect(x: 30, y: 100, width: 80, height: 40))
//        switcher.onTintColor = UIColor.red //设置开启状态显示的颜色
//        switcher.tintColor = UIColor.green //设置关闭状态的颜色
//        switcher.thumbTintColor = UIColor.yellow //滑块上小圆点的颜色
//        switcher.isOn = false //设置开关初始状态
        self.view.addSubview(switcher)
        
        //MARK: 添加状态监听器
        switcher.addTarget(self, action: #selector(switchDidChange(_:)), for: .valueChanged)
        
        //MARK: switch状态保存
        //首先在AppDelegate中设置初始值
        //接着在定义的时候，获取这个值
        //当switcher状态改变的时候应该把当前状态保存起来
//        let state = UserDefaults.standard.bool(forKey: "switchState")
//        switcher.setOn(state, animated: true)
    }
    
    @objc
    func switchDidChange(_ sender: UISwitch){
//        UserDefaults.standard.set(sender.isOn, forKey: "switchState")
        if sender.isOn{
            view.backgroundColor = .black
        } else {
            view.backgroundColor = .white
        }
    }

}

