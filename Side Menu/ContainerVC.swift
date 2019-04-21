//
//  ViewController.swift
//  Side Menu
//
//  Created by Calvin Cantin1 on 2019-04-20.
//  Copyright © 2019 Calvin. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {

    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    @objc func toggleSideMenu()
    {
        if sideMenuOpen
        {
            sideMenuOpen = !sideMenuOpen
            sideMenuConstraint.constant = -240
        }
        else
        {
            sideMenuConstraint.constant = 0
            sideMenuOpen = !sideMenuOpen
        }
    }


}

