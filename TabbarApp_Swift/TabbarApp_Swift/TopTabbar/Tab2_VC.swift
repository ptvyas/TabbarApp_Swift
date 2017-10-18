//
//  Tab2_VC.swift
//  TabbarApp_Swift
//
//  Created by wos on 14/10/17.
//  Copyright © 2017 PTVyas. All rights reserved.
//

import UIKit

class Tab2_VC: UIViewController,UIGestureRecognizerDelegate
{
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
                print("Tab2_VC : Swiped right")
            case UISwipeGestureRecognizerDirection.down:
                print("Tab2_VC : Swiped down")
            case UISwipeGestureRecognizerDirection.left:
                print("Tab2_VC : Swiped left")
            case UISwipeGestureRecognizerDirection.up:
                print("Tab2_VC : Swiped up")
            default:
                break
            }
        }
    }
    
    //- (void)setAnimation:(NSString *)AnimationType subType:(NSString *)AnimationSubType duration:(CFTimeInterval)delaytime funcation:(NSString *)functionName view:(UIView *)viewAnimation;
    
    func setAnimation (animationType : NSString, subType : NSString, duration : CFTimeInterval, Function : NSString, view : UIView) //-> Void
    {
        /*
        let animation = CATransformLayer()
        animation.delegate = self as! CATransformLayer as! CALayerDelegate
         
        //animation = animationType.animation(animationType)
        animation = CATransformLayer.init()
        animation.animation(forKey: animationType)
        animation.duration = duration
        //animation.timingFu
        
        animation.sublayers = subType as! CALayer
        */
        
        /*
        let replicatorLayer = CAReplicatorLayer()
        
        let redSquare = CALayer()
        redSquare.backgroundColor = NSColor.white.cgColor
        redSquare.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        let instanceCount = 5
        
        replicatorLayer.instanceCount = instanceCount
        replicatorLayer.instanceTransform = CATransform3DMakeTranslation(110, 0, 0)
        
        let offsetStep = -1 / Float(instanceCount)
        replicatorLayer.instanceBlueOffset = offsetStep
        replicatorLayer.instanceGreenOffset = offsetStep
        
        replicatorLayer.addSublayer(redSquare)
        */
    }
    
    
    
    
}
