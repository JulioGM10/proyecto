//
//  BotonUIButton.swift
//  Mockups
//
//  Created by Laboratorio UNAM-Apple 01 on 23/10/18.
//  Copyright © 2018 ANN. All rights reserved.
//

import UIKit

class BotonUIButton: UIButton {
    
    override func awakeFromNib() {
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 9
        
        
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.5
        flash.fromValue = 1
        flash.toValue =  0.1
        flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 3
        
        /*
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 5, y:center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 5, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        */
        
        layer.add(flash, forKey: nil)
       // layer.add(shake, forKey: nil)
        
    }

    
}
