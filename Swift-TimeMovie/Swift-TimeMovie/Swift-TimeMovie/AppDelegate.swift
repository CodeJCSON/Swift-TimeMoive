//
//  AppDelegate.swift
//  Swift-TimeMovie
//
//  Created by DahaiZhang on 16/10/13.
//  Copyright © 2016年 LLQ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //创建窗口
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        //判断是否为第一次打开
        let first = UserDefaults.standard.bool(forKey: "isFirst")
        if first == false {
            //第一次打开，展示广告
            window?.rootViewController = FirstViewController()
            UserDefaults.standard.set(true, forKey: "isFirst")
            
        } else {
            //不是第一次，展示主页面
            window?.rootViewController = MainViewController()
        }
        
        return true
    }

}

