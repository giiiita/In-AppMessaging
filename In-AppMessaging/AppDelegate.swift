//
//  AppDelegate.swift
//  In-AppMessaging
//
//  Created by giiiita on 2018/09/24.
//  Copyright © 2018年 giiiita. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        return true
    }
    
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        let urlHost : String = url.host as String!
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if(urlHost == "second"){
            let vc: SecondViewController = mainStoryboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            self.window?.rootViewController = vc
        }
        self.window?.makeKeyAndVisible()
        return true
    }
}

