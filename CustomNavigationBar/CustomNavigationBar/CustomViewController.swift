//
//  CustomViewController.swift
//  CustomNavigationBar
//
//  Created by patrickjr
//  Copyright © 2015 KnowFriends. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension CustomViewController: CustomNavigationBar {
    override func viewDidLoad() {
        
        setCustomNavButtons("Left", center: "Test", right: "Right", leftAction: "left:", rightAction: "right:")
        setNavBarStyle(UIBarStyle.Black)
        super.viewDidLoad()
    }
    func left(sender: AnyObject){
        setNavBarTintColor(UIColor.blackColor())
    }
    func right(sender: AnyObject){
        setNavBarTintColor(UIColor.whiteColor())
    }
}