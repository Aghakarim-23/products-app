//
//  MainTabbarController.swift
//  ProductsApp
//
//  Created by Agakerim Hemidzade on 22.07.26.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let productsViewController = ProductsViewController()
        let profileViewController = ProfileViewController()
        
        let productsNavigationVC = UINavigationController(rootViewController: productsViewController)
        let profileNavigationVC = UINavigationController(rootViewController: profileViewController)

        productsNavigationVC.tabBarItem = UITabBarItem(
            title: "Products",
            image: UIImage(systemName: "bag"),
            selectedImage: UIImage(systemName: "bag.fill")
        )
        
        profileNavigationVC.tabBarItem = UITabBarItem(
            title: "Profile",
            image: UIImage(systemName: "person"),
            selectedImage: UIImage(systemName: "person.fill")
        )
        
     


        viewControllers = [productsNavigationVC, profileViewController]

    }

}
