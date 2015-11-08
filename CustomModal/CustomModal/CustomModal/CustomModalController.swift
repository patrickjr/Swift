//
//  CustomModal.swift
//  CustomModal
//
//  Created by patrickjr
//  Copyright © 2015 KnowFriends. All rights reserved.
//

import UIKit

protocol CustomModalController{
    func saveScreenDimensions(x: CGFloat, y: CGFloat)
    var screenHeight    : CGFloat           { get set }
    var screenWidth     : CGFloat           { get set }
    var modalView       : UIView            { get set }
    var modalController : UIViewController  { get set }
}

extension CustomModalController where Self: UIViewController{
    func createModalView(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, mult: CGFloat=2.0) -> UIView{
        let frame = CGRect(x: x, y: y, width: screenWidth-width*mult, height: screenHeight-height*mult)
        return UIView(frame: frame)
    }
    
    func createModalController(view: UIView, color: UIColor, target: UIViewControllerTransitioningDelegate) -> UIViewController {
        let controller = UIViewController()
        controller.view                   = view
        controller.view.backgroundColor   = color
        controller.modalPresentationStyle = .Custom
        controller.transitioningDelegate  = target
        return controller
    }
    
    func addSwipeRecognizer(direction: UISwipeGestureRecognizerDirection, target: AnyObject?, action: Selector){
        let swipeRecognizer = UISwipeGestureRecognizer(target: target, action: action)
        swipeRecognizer.direction = direction
        modalController.view.addGestureRecognizer(swipeRecognizer)
    }
    func addTapRecognizer(target: AnyObject?, action: Selector){

        let tapRecognizer = UITapGestureRecognizer(target: target, action: action)
        modalController.view.addGestureRecognizer(tapRecognizer)
    }
}
