//
//  TabController_Top.swift
//  TabbarApp_Swift
//
//  Created by wos on 14/10/17.
//  Copyright © 2017 PTVyas. All rights reserved.
//

import UIKit

class TabController_Top: UITabBarController, UITabBarControllerDelegate
{
    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self as UITabBarControllerDelegate
        self.viewWillLayoutSubviews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        self.viewWillLayoutSubviews()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        self.tabBar.invalidateIntrinsicContentSize()
        
        var tabSize : CGFloat
        tabSize = 44.0
        
        var orientation : UIInterfaceOrientation
        orientation = UIApplication.shared.statusBarOrientation
        
        if UIInterfaceOrientationIsPortrait(orientation) {
            tabSize = 32.0
        }
        
        var frame : CGRect
        frame = self.tabBar.frame
        frame.origin.y = self.tabBar.frame.origin.x
        frame.origin.y = 65
        self.tabBar.frame = frame
        
        self.tabBar.isTranslucent = false
        self.tabBar.isTranslucent = true
        
        //------------------------------------------------>
        // Remove the titles and adjust the inset to account for missing title
        for viewController in self.viewControllers!
        {
            //Title
            viewController.tabBarItem.title = ""
            
            //Image Position set
            viewController.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
            
            //Set the badge value
            //viewController.tabBarItem.badgeValue = ""
            
            //Set Fefault Selected Image | Remove Default Tin Color
            viewController.tabBarItem.image = viewController.tabBarItem.image!.withRenderingMode(.alwaysOriginal)
            viewController.tabBarItem.selectedImage = viewController.tabBarItem.selectedImage!.withRenderingMode(.alwaysOriginal)
        }
    }

    // MARK: -
    
    // MARK: - Delegate method
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        //print("tabBar: ",tabBar)
        //print("item: ",item)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //print("tabBarController: ",tabBarController)
        //print("didSelect viewController: ",viewController)
    }
}
