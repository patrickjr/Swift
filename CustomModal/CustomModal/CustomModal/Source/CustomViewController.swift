//
//  CustomViewController.swift
//  CustomModal
//
//  Created by patrickjr
//  Copyright © 2015 KnowFriends. All rights reserved.
//

import UIKit
class CustomViewController: UIViewController, UIViewControllerTransitioningDelegate, CustomModalController {
    var modalController     = UIViewController()
    var modalView           = UIView()
    let color               = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.25)
    var screenHeight        : CGFloat  = 0.0
    var screenWidth         : CGFloat  = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.saveScreenDimensions(self.view.frame.width, y: self.view.frame.height)
        setModalController()
    }

    func saveScreenDimensions(x: CGFloat, y: CGFloat) {
        self.screenWidth  = x
        self.screenHeight = y
    }
    
    func setModalController(){
        self.modalView = createModalView(20.0, y: 200.0, width: 20.0, height: 0.0)
        self.modalController = createModalController(self.modalView, color: self.color, target: self)
        addSwipeRecognizer(.Down, target: self, action: "dismissModal:")
    }
    
    func dismissModal(tapRecognizer: UITapGestureRecognizer) {
        self.presentedViewController?.dismissViewControllerAnimated(true, completion: nil)
        setModalController()
    }
    
    @IBAction func clicked(sender: AnyObject) {
        self.presentViewController(self.modalController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController? {
        let presentationController = CustomPresentationController(presentedViewController: presented, presentingViewController: presenting)
        return presentationController
    }

}




