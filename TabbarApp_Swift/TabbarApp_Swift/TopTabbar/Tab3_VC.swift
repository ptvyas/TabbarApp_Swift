//
//  Tab3_VC.swift
//  TabbarApp_Swift
//
//  Created by wos on 14/10/17.
//  Copyright © 2017 PTVyas. All rights reserved.
//

import UIKit

class Tab3_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Manage Swipe
        self.manageSwipe();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: -
    
    // MARK: - SwipeGesture
    func manageSwipe() {
        var swipeLeft : UISwipeGestureRecognizer
        //swipeLeft = UISwipeGestureRecognizer(target: self, action: Selector(("respondToSwipeGesture:")))
        swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        var swipeRight : UISwipeGestureRecognizer
        //swipeRight = UISwipeGestureRecognizer(target: self, action: Selector(("respondToSwipeGesture:")))
        swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    func respondToSwipeGesture(_ gesture: UIGestureRecognizer)
    {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer
        {
            switch swipeGesture.direction
            {
            case UISwipeGestureRecognizerDirection.right:
                print("Tab3_VC : Swiped right")
            case UISwipeGestureRecognizerDirection.down:
                print("Tab3_VC : Swiped down")
            case UISwipeGestureRecognizerDirection.left:
                print("Tab3_VC : Swiped left")
            case UISwipeGestureRecognizerDirection.up:
                print("Tab3_VC : Swiped up")
            default:
                break
            }
        }
    }
}
