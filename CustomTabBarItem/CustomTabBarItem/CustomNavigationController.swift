//
//  CustomNavigationController.swift
//  CustomTabBarItem
//
//  Created by patrickjr on 11/5/15.
//  Copyright © 2015 KnowFriends. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController, CustomTabBarItem{
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let selectedItem   : NSDictionary = [NSForegroundColorAttributeName: UIColor.blueColor()]
        let unSelectedItem : NSDictionary = [NSForegroundColorAttributeName: UIColor.blackColor()]
        
        self.tabBarItem = createCustomTabBarItem(image: "Study", selectedImage: "selectedSettingsIcon", selectedAttributes: selectedItem, unSelectedAttributes: unSelectedItem)
    }
}