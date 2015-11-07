//
//  CustomNavigationBar.swift
//  CustomNavigationBar
//
//  Created by patrickjr
//  Copyright © 2015 KnowFriends. All rights reserved.
//

import UIKit

protocol CustomNavigationBar{}

extension CustomNavigationBar where Self: UIViewController{

    func setNavBarTintColor(color: UIColor){
        self.navigationController?.navigationBar.barTintColor = color
    }
    func setNavBarStyle(style: UIBarStyle){
        self.navigationController?.navigationBar.barStyle = style
    }
    
    func setCustomNavButtons(left: String = "", center: String = "", right: String = "", leftAction: Selector=nil, centerAction: Selector=nil, rightAction: Selector=nil){
        self.setLeftButton(left, myAction: leftAction)
        self.setCenterButton(center, myAction: centerAction)
        self.setRightButton(right, myAction: rightAction)
    }
    
    private func setLeftButton(left: String, myAction: Selector){
        let myLeftButton = UIBarButtonItem(title: left, style: .Plain, target: self, action: myAction)
        self.navigationItem.leftBarButtonItem = myLeftButton
    }
    
    private func setCenterButton(center: String, myAction: Selector){
        self.navigationItem.title = center
    }
    
    private func setRightButton(right: String, myAction: Selector){
        let myRightButton = UIBarButtonItem(title: right, style: .Plain, target: self, action: myAction)
        self.navigationItem.rightBarButtonItem = myRightButton
    }
    
}