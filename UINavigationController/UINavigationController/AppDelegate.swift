//
//  AppDelegate.swift
//  UINavigationController
//
//  Created by admin on 2020/12/9.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let viewController = ViewController()
        let navController = UINavigationController(rootViewController: viewController)
        viewController.navigationItem.title = "abc"
        
        let tabController = UITabBarController()
        tabController.viewControllers = [navController]
        navController.tabBarItem.title = "Ok"
        
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = tabController
        return true
    }
}

