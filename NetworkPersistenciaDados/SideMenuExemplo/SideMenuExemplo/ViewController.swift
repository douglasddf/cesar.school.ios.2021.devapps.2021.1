//
//  ViewController.swift
//  SideMenuExemplo
//
//  Created by Douglas Frari on 12/18/21.
//

import UIKit
import SideMenu

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
            // Define the menus
        SideMenuManager.default.leftMenuNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? SideMenuNavigationController
        
        
            // Enable gestures. The left and/or right menus must be set up above for these to work.
            // Note that these continue to work on the Navigation Controller independent of the View Controller it displays!
        
        SideMenuManager.default.addPanGestureToPresent(toView: self.navigationController!.navigationBar)
            // Updated
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.navigationController!.view, forMenu: SideMenuManager.PresentDirection.left)
        
    }


}

