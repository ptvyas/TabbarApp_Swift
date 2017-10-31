//
//  ViewController.swift
//  TabbarApp_Swift
//
//  Created by wos on 14/10/17.
//  Copyright © 2017 PTVyas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Button Action Method
    @IBAction func btnTopAction() {
        let objVC = self.storyboard?.instantiateViewController(withIdentifier: "TabController_Top") as! TabController_Top
        objVC.tabBarPosition = "Top"
        self.navigationController?.pushViewController(objVC, animated: true)
    }
    
    @IBAction func btnBottonAction() {
        let objVC = self.storyboard?.instantiateViewController(withIdentifier: "TabController_Top") as! TabController_Top
        objVC.tabBarPosition = "Bottom"
        self.navigationController?.pushViewController(objVC, animated: true)
    }
}
