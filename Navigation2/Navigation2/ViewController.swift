//
//  ViewController.swift
//  Navigation2
//
//  Created by admin on 2020/12/10.
//

import UIKit

class ViewController: UIViewController {

    @objc func pop() {
        //Pops the top view controller from the navigation stack and updates the display.
        _ = self.navigationController?.popViewController(animated: true)
        self.navigationController?.isToolbarHidden = false
        
    }
    
    //弹出到制定某个视图控制器，这个方法会把所有弹出的视图控制器以数组的形式返回
    //public func popToViewController(, animated: ) -> [UIViewController]?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationItem.title = "第2个视图控制器"
        
        let barItem = UIBarButtonItem(barButtonSystemItem: .done , target: self, action: #selector(pop))
        self.navigationItem.rightBarButtonItem = barItem
        
        self.navigationController?.isToolbarHidden = true
        
    }


}

