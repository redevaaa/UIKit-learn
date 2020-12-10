//
//  ViewController.swift
//  ClearTabBar
//
//  Created by redevaaa on 2020/12/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let bg = UIImageView(image: UIImage(named: "bg"))
        bg.frame = view.frame
        bg.contentMode = .scaleAspectFill
        view.addSubview(bg)
        
        
    }
}

