//
//  AppDelegate.swift
//  YouTube
//
//  Created by Lee on 2017. 10. 23..
//  Copyright © 2017년 LEE. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let layout = UICollectionViewFlowLayout()
        
        window?.rootViewController = UINavigationController(rootViewController: HomeController(collectionViewLayout: layout))
        
//        UINavigationBar.appearance().tintColor = UIColor(red: 230/255, green: 32/255, blue: 31/255, alpha: 1)
        
        let statusBarBackgroundView = UIView()
        statusBarBackgroundView.backgroundColor = UIColor.rgb(red: 194, green: 31, blue: 31, alpha: 1)

        window?.addSubview(statusBarBackgroundView)
        window?.addContraintsWithFormat(format: "H:|[v0]|", views: statusBarBackgroundView)
        window?.addContraintsWithFormat(format: "V:|[v0(20)]", views: statusBarBackgroundView)
    
        return true
    }
}

