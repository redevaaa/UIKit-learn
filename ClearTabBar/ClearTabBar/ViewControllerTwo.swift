//
//  ViewControllerTwo.swift
//  ClearTabBar
//
//  Created by redevaaa on 2020/12/9.
//

import UIKit

class ViewControllerTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bg2 = UIImageView(image: UIImage(named: "bg2"))
        bg2.frame = view.frame
        bg2.contentMode = .scaleAspectFill
        view.addSubview(bg2)
    }

}
