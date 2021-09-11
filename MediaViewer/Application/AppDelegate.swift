//
//  AppDelegate.swift
//  MediaViewer
//
//  Created by TranTien on 11/09/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print(">>> didFinishLaunchingWithOptions")
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let vc = UIStoryboard().instantiateViewController(ofType: ViewController.self)
        let nvc = UINavigationController(rootViewController: vc)
        window?.rootViewController = nvc
        window?.makeKeyAndVisible()
        
        return true
    }

}

