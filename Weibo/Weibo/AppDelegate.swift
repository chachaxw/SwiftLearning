//
//  AppDelegate.swift
//  Weibo
//
//  Created by Wei Zhou on 05/10/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        // 1.创建window
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        // 2.创建根控制器
        window?.rootViewController = ViewController()
        // 3.显示界面
        window?.makeKeyAndVisible()
        return true
    }

}

