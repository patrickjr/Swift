//
//  CustomTabBarItem.swift
//  CustomTabBarItem
//
//
//  Created by patrickjr on 10/13/15.
//  Copyright © 2015 KnowFriends. All rights reserved.
//

import UIKit

protocol CustomTabBarItem {}

extension CustomTabBarItem where Self: UINavigationController{
    
    func createCustomTabBarItem(title: String="", selectedAttributes: NSDictionary=[:], unSelectedAttributes: NSDictionary=[:],image: String="", selectedImage: String="",imageRenderingMode: UIImageRenderingMode=UIImageRenderingMode.AlwaysOriginal) -> UITabBarItem {
        
        let myImage         = UIImage(named: image)?.imageWithRenderingMode(imageRenderingMode)
        let mySelectedImage = UIImage(named: selectedImage)?.imageWithRenderingMode(imageRenderingMode)
        
        let tabBarItem      = UITabBarItem(title: title, image: myImage, selectedImage: mySelectedImage)

        tabBarItem.setTitleTextAttributes(unSelectedAttributes as? [String : AnyObject], forState: .Normal)
        tabBarItem.setTitleTextAttributes(selectedAttributes   as? [String : AnyObject], forState: .Selected)
        return tabBarItem
    }
    
}
