//
//  ViewControllerTwo.swift
//  UITabBarController
//
//  Created by admin on 2020/12/10.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    init(title: String, color: UIColor){
        super.init(nibName: nil, bundle: nil)
        self.view.backgroundColor = color
        let item = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        item.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 3)
        item.badgeColor = .red //设置提示视图背景
        item.badgeValue = "New" //设置提示文字
        self.tabBarItem = item
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
