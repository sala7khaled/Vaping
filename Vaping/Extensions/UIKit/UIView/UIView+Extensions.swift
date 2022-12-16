//
//  UIView+Extensions.swift
//  Vaping
//
//  Created by Salah Khaled on 16/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

extension UIView {
    
    func setRadius(_ radius: CGFloat? = nil) {
        
        if let radius = radius {
            layer.cornerRadius = radius
            clipsToBounds = true
        } else {
            oval()
        }
    }
    
    func setBorder (width: CGFloat, color: UIColor) {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
    }
    
    func oval() {
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
    }
    
}
