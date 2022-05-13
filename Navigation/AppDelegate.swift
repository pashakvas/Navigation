//
//  AppDelegate.swift
//  Navigation
//
//  Created by Павел on 20.02.2022.
//

import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
        let tabBarController = UITabBarController()
        
/*       if #available(iOS 13.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            UITabBar.appearance().standardAppearance = tabBarAppearance

            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
        }
*/
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        
        let navBarAppearance: UINavigationBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithDefaultBackground()
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    
        let feedVC = FeedViewController()
        feedVC.tabBarItem = UITabBarItem(title: "Feed",
                                         image: UIImage(systemName: "house.fill"),
                                         tag: 0)
        feedVC.tabBarItem.title = "Feed"
        
        let profileVC = ProfileViewController()
        profileVC.tabBarItem = UITabBarItem (title: "Profile",
                                             image:UIImage(systemName:"person.fill"),
                                             tag: 1)
        profileVC.tabBarItem.title = "Profile"
        
        let feedNavVC = UINavigationController(rootViewController: feedVC)
        tabBarController.viewControllers = [profileVC,feedNavVC]
        self.window?.rootViewController = tabBarController

        return true
    }
}
