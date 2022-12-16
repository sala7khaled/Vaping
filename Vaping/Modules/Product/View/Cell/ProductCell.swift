//
//  OnboardCell.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var background: UIView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        background.setRadius(6)
        background.setBorder(width: 1, color: .appGray)
    }
        
    func configure(with product: Product) {
        img.loadImage(url: product.image.url)
        price.text = "\(product.price)$"
        desc.text = product.desc
    }
}
