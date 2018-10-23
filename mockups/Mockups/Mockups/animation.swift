//
//  animation.swift
//  Mockups
//
//  Created by Laboratorio UNAM-Apple 01 on 23/10/18.
//  Copyright © 2018 ANN. All rights reserved.
//

import UIKit

class animation: UILabel {

    override func awakeFromNib() {
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.blue.cgColor
        layer.cornerRadius = 9
        
        
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.5
        flash.fromValue = 1
        flash.toValue =  0.1
        flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 3
        
        layer.add(flash, forKey: nil)
    }

}
