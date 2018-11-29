//
//  ContenidoVC.swift
//  Vistas
//
//  Created by Macbook on 11/28/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ContenidoVC: UIViewController {

    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    @objc func toggleSideMenu(){
        if sideMenuOpen{
            sideMenuOpen = false
            sideMenuConstraint.constant = -240
        }else {
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
        }
        UIView.animate(withDuration: 0.3){
            self.view.layoutIfNeeded()
        }
    }
    

}
