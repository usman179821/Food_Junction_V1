//
//  AppDelegate.swift
//  Food Junction
//
//  Created by Swifty on 3/25/22.
//

import UIKit

    @UIApplicationMain
    class AppDelegate: UIResponder, UIApplicationDelegate {

        var window: UIWindow?


        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

            let backButtonImage = UIImage(named: "back")
            UINavigationBar.appearance().backIndicatorImage = backButtonImage
            UINavigationBar.appearance().backIndicatorTransitionMaskImage = backButtonImage

            return true
        
        //MARK: - USMAN SEND CODE STATUS BAR
//                UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0.5089046359, green: 0.07109685987, blue: 0.9164965749, alpha: 1)
//                 UINavigationBar.appearance().alpha = 0.3
//                UINavigationBar.appearance().tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//                UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
//                UINavigationBar.appearance().isTranslucent = false
//                 Override point for customization after application launch.UINavigationBar.appearance().tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//
//        return true
        
        
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

