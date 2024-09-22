//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 22.09.2024.
//

import UIKit

final class TabBarController: UITabBarController {

    var user: User!
    
    override func viewDidLoad() {
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        tabBar.items?.last?.title = user.person.surname
        
        transferData()
    
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                if let aboutMeVC = navigationVC.topViewController as? AboutMeViewController {
                    aboutMeVC.user = user
                }
            }
        }
    }
}
