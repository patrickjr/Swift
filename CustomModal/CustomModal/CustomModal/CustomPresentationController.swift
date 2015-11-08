//
//  CustomPresentationController.swift
//  CustomModal
//
//  Created by patrickjr
//  Copyright © 2015 KnowFriends. All rights reserved.
//

import UIKit

class CustomPresentationController : UIPresentationController {
    override func frameOfPresentedViewInContainerView() -> CGRect {
        let origin  = self.presentedViewController.view.frame.origin
        let width   = self.presentedViewController.view.frame.width
        let height  = self.presentedViewController.view.frame.height
        return CGRect(x: origin.x, y: origin.y, width: width, height: height)
    }
}
