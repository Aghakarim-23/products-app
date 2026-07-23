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

        productsViewController.tabBarItem = UITabBarItem(
            title: "Products",
            image: UIImage(systemName: "bag"),
            selectedImage: UIImage(systemName: "bag.fill")
        )
        
        profileViewController.tabBarItem = UITabBarItem(
            title: "Profile",
            image: UIImage(systemName: "person"),
            selectedImage: UIImage(systemName: "person.fill")
        )
        
     


        viewControllers = [productsViewController, profileViewController]

    }

}
