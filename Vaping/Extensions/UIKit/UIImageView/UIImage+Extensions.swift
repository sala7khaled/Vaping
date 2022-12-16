//
//  UIImage+Extensions.swift
//  Vaping
//
//  Created by Salah Khaled on 16/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func loadImage(url: String?) {
        NETWORK.loadImage(from: url) { [weak self] image in
            guard let self = self else { return }
            DispatchQueue.main.async { self.image = image }
        }
    }
}

extension UIImageView {
  func setImageColor(color: UIColor) {
    let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
    self.image = templateImage
    self.tintColor = color
  }
}
