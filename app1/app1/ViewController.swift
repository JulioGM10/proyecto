//
//  ViewController.swift
//  app1
//
//  Created by Usuario invitado on 2/5/19.
//  Copyright © 2019 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func button(_ sender: UIButton) {
        
        if let texto = text.text{
            print(texto)
            label.text = texto
        }
        
    }
    
    


}

