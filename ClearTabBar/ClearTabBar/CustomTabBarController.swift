//
//  CustomTabBarController.swift
//  ClearTabBar
//
//  Created by redevaaa on 2020/12/9.
//

import UIKit

class CustomTabBarController: UITabBarController, UITabBarControllerDelegate {

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
    
    func getColoredImage(color: UIColor, size: CGSize) -> UIImage? {
        let rect = CGRect(origin: CGPoint(x:0, y:0), size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        guard let image: UIImage = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        return image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        delegate = self
    }
    
    func setupViewControllers() {
        let first = templateNavController(rootViewController: ViewController(), image:#imageLiteral(resourceName: "add-icon"))
        let second = templateNavController(rootViewController: ViewControllerTwo(), image:#imageLiteral(resourceName: "done-icon"))
        viewControllers = [first,second]
        tabBar.backgroundImage = getColoredImage(color: .clear, size: view.frame.size)
    }
    
}

func templateNavController(rootViewController: UIViewController, image: UIImage) -> UINavigationController {
    let navController = UINavigationController(rootViewController: rootViewController)
    navController.tabBarItem.image = image
    return navController
}
