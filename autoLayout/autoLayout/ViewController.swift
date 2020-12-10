//
//  ViewController.swift
//  autoLayout
//
//  Created by admin on 2020/12/10.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var box2 = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let box = UIView()
        box.backgroundColor = .blue
        //添加约束前，必须将视图添加到其父视图上
        self.view.addSubview(box)
        //MARK: 居中显示、dividedBy、multipliedBy
//        box.snp.makeConstraints{ (make) in
//            make.centerX.equalToSuperview()
//            make.top.equalToSuperview()
//            make.width.equalToSuperview().multipliedBy(0.45)
//            make.height.equalTo(45)
//        }
        //MARK: offset
//        box.snp.makeConstraints{ (make) in
//            // 距离父视图上边100dp
//            make.top.equalToSuperview().offset(100)
//            // 距离父视图下边100dp
//            make.bottom.equalToSuperview().offset(-100)
//            // 距离父视图左边50dp
//            make.left.equalToSuperview().offset(50)
//            // 距离父视图右边50dp
//            make.right.equalToSuperview().offset(-50)
//            // 更加简单的写法
//            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 100, left: 50, bottom: 100, right: 50))
//        }
        //MARK: Composability & Chaining
//        box.snp.makeConstraints { (make) in
//            make.top.left.right.bottom.equalToSuperview()
//            make.edges.equalToSuperview().inset(16)
//        }
        
        //MARK: safeAreaLayoutGuide
//        let box1 = UIView()
//        box1.backgroundColor = .blue
//        view.addSubview(box1)
//        box1.snp.makeConstraints{ (make) in
//            make.size.equalTo(100)
//        }
//
//        let box2 = UIView()
//        box2.backgroundColor = .red
//        view.addSubview(box2)
//        box2.snp.makeConstraints { (make) in
//            make.size.equalTo(100)
//            make.right.equalToSuperview()
//            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
//        }
//
//        let box3 = UIView()
//        box3.backgroundColor = .yellow
//        self.view.addSubview(box3)
//        box3.snp.makeConstraints{ (make) in
//            make.size.equalTo(100)
//            make.bottom.equalToSuperview().offset(0)
//        }
//
//        let box4 = UIView()
//        box4.backgroundColor = .black
//        self.view.addSubview(box4)
//        box4.snp.makeConstraints { (make) in
//            make.size.equalTo(100)
//            make.right.equalToSuperview().offset(0)
//            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
//        }
        //MARK: priority优先级顺序是：required > high > medium > low
//        let box1 = UIView()
//        box1.backgroundColor = .blue
//        self.view.addSubview(box1)
//        box1.snp.makeConstraints { (make) in
//            make.center.equalToSuperview().priority(.medium)
//            make.right.equalToSuperview().offset(10).priority(.high)
//            make.top.equalToSuperview().offset(10).priority(.low)
//            make.size.equalTo(100).priority(.medium)
//            make.size.equalTo(200).priority(.low)
//        }
        //MARK: equalTo、lessThanOrEqualTo、greaterThanOrEqualTo
//        let box1 = UIView()
//        box1.backgroundColor = UIColor.blue
//        self.view.addSubview(box1)
//
//        let box2 = UIView()
//        box2.backgroundColor = UIColor.red
//        self.view.addSubview(box2)
//
//        box1.snp.makeConstraints { (make) in
//            make.left.equalToSuperview().offset(0)
//            make.size.equalTo(100).priority(.high)
//            make.size.greaterThanOrEqualTo(box2).priority(.high)
//        }
//        box2.snp.makeConstraints { (make) in
//            make.right.equalToSuperview().offset(0)
//            make.size.equalTo(200).priority(.low)
//        }

//        let box1 = UIView()
//        box1.backgroundColor = UIColor.blue
//        self.view.addSubview(box1)
//
//        let box2 = UIView()
//        box2.backgroundColor = UIColor.red
//        self.view.addSubview(box2)
//
//        box1.snp.makeConstraints { (make) in
//            make.left.equalToSuperview().offset(0)
//            make.size.equalTo(100).priority(.low)
//            make.size.greaterThanOrEqualTo(box2).priority(.high)
//        }
//        box2.snp.makeConstraints { (make) in
//            make.right.equalToSuperview().offset(0)
//            make.size.equalTo(200).priority(.high)
//        }

        //MARK: StackView
        let box1 = UIView()
        box1.backgroundColor = UIColor.blue
        self.view.addSubview(box1)

        box2.backgroundColor = UIColor.red
        self.view.addSubview(box2)

        box1.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
            make.size.equalTo(100).priority(.high)
        }
        box2.snp.makeConstraints { (make) in
            make.left.right.equalTo(box1)
            make.top.equalTo(box1.snp.bottom).offset(16)
            make.height.equalTo(80)
        }
        //MARK: Remove all the constraints
//        box2.snp.removeConstraints()
        //MARK: Remake the entire constraint set on a specific view.
        box2.snp.remakeConstraints { (make) in
            make.left.right.equalTo(box1)
            make.top.equalTo(box1.snp.bottom).offset(18)
            make.height.equalTo(100)
        }
    }

}

//MARK: Updating a Constraint’s Constant
extension ViewController {
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        super.willTransition(to: newCollection, with: coordinator)
        let isPortrait = UIDevice.current.orientation.isPortrait
        box2.snp.updateConstraints { (make) in
            make.height.equalTo(isPortrait ? 80 : 30)
        }
    
    }
}
